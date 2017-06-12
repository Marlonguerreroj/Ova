/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.modelo;

import co.edu.ufps.modelo.dao.PersonaDAO;
import co.edu.ufps.modelo.dto.PersonaDTO;
import co.edu.ufps.modelo.dto.TipoUsuarioDTO;

/**
 *
 * @author marlonguerrero
 */
public class Fachada {

    public boolean registrarPersona(int codigo, String nombre, String apellido, String correo, String contrasena, String celular, int idTipo) throws Exception {
        TipoUsuarioDTO t = new TipoUsuarioDTO();
        t.setId(idTipo);
        PersonaDTO p = new PersonaDTO(codigo, nombre, apellido, correo, contrasena, celular, t);
        PersonaDAO d = new PersonaDAO();
        return d.registrarPersona(p);
    }

    public PersonaDTO iniciarSesion(int codigo, String contrasena) throws Exception {
        PersonaDAO dao = new PersonaDAO();
        PersonaDTO dto = new PersonaDTO();
        dto.setCodigo(codigo);
        dto.setContrasena(contrasena);
        return dao.iniciarSesion(dto);
    }
    
    public boolean actualizarPersona(String nombre,String apellido,String celular,String imagen, int codigo) throws Exception{
        PersonaDAO dao = new PersonaDAO();
        PersonaDTO dto = new PersonaDTO();
        dto.setNombre(nombre);
        dto.setApellido(apellido);
        dto.setCelular(celular);
        dto.setImagen(imagen);
        dto.setCodigo(codigo);
        return dao.actualizarPersona(dto);
    }
}
