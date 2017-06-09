/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.modelo.dao;

import co.edu.ufps.modelo.dto.PersonaDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author marlonguerrero
 */
public class PersonaDAO {

    private Connection conn;

    public boolean registrarPersona(PersonaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        if (conn != null) {
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO persona"
                    + " (codigo, nombre, apellido,correo,contrasena,celular,id_tipo_usuario) values (?,?,?,?,?,?,?)");
            stmt.setInt(1, dto.getCodigo());
            stmt.setString(2, dto.getNombre());
            stmt.setString(3, dto.getApellido());
            stmt.setString(4, dto.getCorreo());
            stmt.setString(5, dto.getContrasena());
            stmt.setString(6, dto.getCelular());
            stmt.setInt(7, dto.getTipo().getId());
            try {
                exito = stmt.executeUpdate() > 0;
            } catch (SQLException ex) {
            } finally {
                conn.close();
                stmt.close();
            }
        }
        return exito;
    }

    public PersonaDTO iniciarSesion(PersonaDTO dto) throws Exception {
        PersonaDTO rel = null;
        conn = Conexion.generarConexion();
        String nombre = "";
        PreparedStatement stmt = conn.prepareStatement("SELECT *"
                + " FROM persona WHERE codigo = ? and contrasena = ?");
        stmt.setInt(1, dto.getCodigo());
        stmt.setString(2, dto.getContrasena());
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            rel = new PersonaDTO();
            rel.setCodigo(rs.getInt(1));
            rel.setNombre(rs.getString(2));
            rel.setApellido(rs.getString(3));
            rel.setCorreo(rs.getString(4));
            rel.setContrasena(rs.getString(5));
            rel.setCelular(rs.getString(6));
            rel.getTipo().setId(rs.getInt(7));
        }
        return rel;
    }

}
