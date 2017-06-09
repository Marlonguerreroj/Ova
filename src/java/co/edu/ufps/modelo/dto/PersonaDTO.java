/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.modelo.dto;

import java.io.Serializable;

/**
 *
 * @author marlonguerrero
 */
public class PersonaDTO implements Serializable {

    private int codigo;
    private String nombre, apellido, correo, contrasena, celular;
    private TipoUsuarioDTO tipo;

    public TipoUsuarioDTO getTipo() {
        return tipo;
    }

    public void setTipo(TipoUsuarioDTO tipo) {
        this.tipo = tipo;
    }

    public PersonaDTO() {
        tipo = new TipoUsuarioDTO();
    }

    public PersonaDTO(int codigo, String nombre, String apellido, String correo, String contrasena, String celular, TipoUsuarioDTO tipo) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.contrasena = contrasena;
        this.celular = celular;
        this.tipo = new TipoUsuarioDTO();
        this.tipo = tipo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

}
