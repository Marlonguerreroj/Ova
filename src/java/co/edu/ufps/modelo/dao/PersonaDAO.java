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
import java.util.ArrayList;

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
        PreparedStatement stmt = conn.prepareStatement("SELECT p.codigo, p.nombre,p.apellido, p.correo, p.contrasena, p.celular, p.id_tipo_usuario, t.tipo, p.imagen, p.examen1, p.examen2 FROM persona as p INNER JOIN tipo_usuario as t on t.id = p.id_tipo_usuario "
                + " WHERE codigo = ? and contrasena = ?");
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
            rel.getTipo().setTipo(rs.getString(8));
            rel.setImagen(rs.getString(9));
            rel.setExamen1(rs.getInt(10));
            rel.setExamen2(rs.getInt(11));
        }
        return rel;
    }

    public boolean actualizarPersona(PersonaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        PreparedStatement stmt;
        try {
            String update = "UPDATE persona set nombre = ?, apellido = ?, celular = ?, imagen = ? where codigo = ?";
            stmt = conn.prepareStatement(update);
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getApellido());
            stmt.setString(3, dto.getCelular());
            stmt.setString(4, dto.getImagen());
            stmt.setInt(5, dto.getCodigo());

            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
            }
            stmt.close();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return exito;
    }

    public ArrayList<PersonaDTO> listarPersonas() throws Exception {
        ArrayList<PersonaDTO> list = new ArrayList<>();
        conn = Conexion.generarConexion();
        String nombre = "";
        PreparedStatement stmt = conn.prepareStatement("SELECT p.codigo, p.nombre,p.apellido, p.correo, p.contrasena, p.celular, p.id_tipo_usuario, t.tipo, p.imagen, p.examen1, p.examen2 FROM persona as p INNER JOIN tipo_usuario as t on t.id = p.id_tipo_usuario "
                + "");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            PersonaDTO rel = new PersonaDTO();
            rel.setCodigo(rs.getInt(1));
            rel.setNombre(rs.getString(2));
            rel.setApellido(rs.getString(3));
            rel.setCorreo(rs.getString(4));
            rel.setContrasena(rs.getString(5));
            rel.setCelular(rs.getString(6));
            rel.getTipo().setId(rs.getInt(7));
            rel.getTipo().setTipo(rs.getString(8));
            rel.setImagen(rs.getString(9));
            rel.setExamen1(rs.getInt(10));
            rel.setExamen2(rs.getInt(11));
            list.add(rel);
        }
        return list;
    }

    public boolean cambiarContrasena(PersonaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        PreparedStatement stmt;
        try {
            String update = "UPDATE persona set contrasena = ? where codigo = ?";
            stmt = conn.prepareStatement(update);
            stmt.setString(1, dto.getContrasena());
            stmt.setInt(2, dto.getCodigo());

            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
            }
            stmt.close();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return exito;
    }
    
    public boolean actualizarExamen1(PersonaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        PreparedStatement stmt;
        try {
            String update = "UPDATE persona set examen1 = ? where codigo = ?";
            stmt = conn.prepareStatement(update);
            stmt.setInt(1, dto.getExamen1());
            stmt.setInt(2, dto.getCodigo());

            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
            }
            stmt.close();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return exito;
    }
    
    public boolean actualizarExamen2(PersonaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        PreparedStatement stmt;
        try {
            String update = "UPDATE persona set examen2 = ? where codigo = ?";
            stmt = conn.prepareStatement(update);
            stmt.setInt(1, dto.getExamen2());
            stmt.setInt(2, dto.getCodigo());

            int total = stmt.executeUpdate();
            if (total > 0) {
                exito = true;
            }
            stmt.close();

        } catch (Exception e) {

        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return exito;
    }

}
