/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.modelo;

import co.edu.ufps.modelo.dao.ActividadDAO;
import co.edu.ufps.modelo.dao.PersonaDAO;
import co.edu.ufps.modelo.dto.PersonaDTO;
import co.edu.ufps.modelo.dto.PreguntaDTO;
import co.edu.ufps.modelo.dto.TemaDTO;
import co.edu.ufps.modelo.dto.TipoUsuarioDTO;
import java.util.ArrayList;

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

    public boolean actualizarPersona(String nombre, String apellido, String celular, String imagen, int codigo) throws Exception {
        PersonaDAO dao = new PersonaDAO();
        PersonaDTO dto = new PersonaDTO();
        dto.setNombre(nombre);
        dto.setApellido(apellido);
        dto.setCelular(celular);
        dto.setImagen(imagen);
        dto.setCodigo(codigo);
        return dao.actualizarPersona(dto);
    }

    public ArrayList<PersonaDTO> listarPersonas() throws Exception {
        PersonaDAO dao = new PersonaDAO();
        return dao.listarPersonas();
    }
    
    public boolean cambiarContrasena(String contrasena,int codigo) throws Exception{
        PersonaDAO dao = new PersonaDAO();
        PersonaDTO dto = new PersonaDTO();
        dto.setContrasena(contrasena);
        dto.setCodigo(codigo);
        return dao.cambiarContrasena(dto);
    }
    
    public ArrayList<TemaDTO> listarTemas() throws Exception{
        ActividadDAO dao = new ActividadDAO();
        return dao.listarTemas();
    }
    
    public boolean registrarPregunta(String nombre,String opcion1,String opcion2,String opcion3,String opcion4,
            String respuesta,String id) throws Exception{
        ActividadDAO dao = new ActividadDAO();
        PreguntaDTO dto = new PreguntaDTO();
        dto.setNombre(nombre);
        dto.setOpcion1(opcion1);
        dto.setOpcion2(opcion2);
        dto.setOpcion3(opcion3);
        dto.setOpcion4(opcion4);
        dto.setRespuesta(respuesta);
        dto.getTema().setId(id);
        return dao.registrarPregunta(dto);
    }
    
    public ArrayList<PreguntaDTO> listarPreguntas(String tema) throws Exception{
        ActividadDAO dao = new ActividadDAO();
        return dao.listarPreguntas(tema);
    }
    
    public boolean actualizarExamen1(int codigo,int examen1) throws Exception{
        PersonaDTO dTO = new PersonaDTO();
        dTO.setCodigo(codigo);
        dTO.setExamen1(examen1);
        PersonaDAO dao = new PersonaDAO();
        return dao.actualizarExamen1(dTO);
    }
    public boolean actualizarExamen2(int codigo,int examen2) throws Exception{
        PersonaDTO dTO = new PersonaDTO();
        dTO.setCodigo(codigo);
        dTO.setExamen2(examen2);
        PersonaDAO dao = new PersonaDAO();
        return dao.actualizarExamen2(dTO);
    }
}
