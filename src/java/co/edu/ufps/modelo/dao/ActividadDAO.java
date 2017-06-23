/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.modelo.dao;

import co.edu.ufps.modelo.dto.PreguntaDTO;
import co.edu.ufps.modelo.dto.TemaDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author marlonguerrero
 */
public class ActividadDAO {

    private Connection conn;

    public ArrayList<TemaDTO> listarTemas() throws Exception {
        ArrayList<TemaDTO> list = new ArrayList<>();
        conn = Conexion.generarConexion();
        PreparedStatement stmt = conn.prepareStatement("SELECT t.id, t.nombre FROM tema as t"
                + "");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            TemaDTO rel = new TemaDTO();
            rel.setId(rs.getString(1));
            rel.setNombre(rs.getString(2));
            list.add(rel);
        }
        return list;
    }

    public ArrayList<PreguntaDTO> listarPreguntas(String tema) throws Exception {
        ArrayList<PreguntaDTO> list = new ArrayList<>();
        conn = Conexion.generarConexion();
        String where = "where p.id_tema = ?";
        System.out.println(tema);
        if (tema.equals("Mecanismos")) {
            where = "where (p.id_tema = 'H01') OR (p.id_tema = 'H02') OR (p.id_tema = 'H03')"
                    + " OR (p.id_tema = 'H04') OR (p.id_tema = 'H05') OR (p.id_tema = 'H06') "
                    + "OR (p.id_tema = 'I01')";
        }
        if (tema.equals("Jdbc")) {
            where = "where (p.id_tema = 'JDBC00') OR (p.id_tema = 'JDBC01') OR (p.id_tema = 'JDBC02')"
                    + " OR (p.id_tema = 'JDBC03') OR (p.id_tema = 'JDBC04') OR (p.id_tema = 'JDBC05') "
                    + "OR (p.id_tema = 'JDBC06') OR (p.id_tema = 'JDBC07')";
        }
        PreparedStatement stmt = conn.prepareStatement("SELECT p.nombre,p.opcion1,p.opcion2,"
                + " p.opcion3,p.opcion4,p.respuesta, p.id_tema, t.nombre FROM pregunta as p"
                + " INNER JOIN tema as t on p.id_tema = t.id " + where);
        if (!tema.equals("Mecanismos") && !tema.equals("Jdbc")) {
            stmt.setString(1, tema);
        }
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            PreguntaDTO rel = new PreguntaDTO();
            rel.setNombre(rs.getString(1));
            rel.setOpcion1(rs.getString(2));
            rel.setOpcion2(rs.getString(3));
            rel.setOpcion3(rs.getString(4));
            rel.setOpcion4(rs.getString(5));
            rel.setRespuesta(rs.getString(6));
            rel.getTema().setId(rs.getString(7));
            rel.getTema().setNombre(rs.getString(8));
            list.add(rel);
        }
        return list;
    }

    public boolean registrarPregunta(PreguntaDTO dto) throws Exception {
        boolean exito = false;
        conn = Conexion.generarConexion();
        if (conn != null) {
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO pregunta"
                    + " (nombre, opcion1, opcion2,opcion3,opcion4,respuesta,id_tema) values (?,?,?,?,?,?,?)");
            stmt.setString(1, dto.getNombre());
            stmt.setString(2, dto.getOpcion1());
            stmt.setString(3, dto.getOpcion2());
            stmt.setString(4, dto.getOpcion3());
            stmt.setString(5, dto.getOpcion4());
            stmt.setString(6, dto.getRespuesta());
            stmt.setString(7, dto.getTema().getId());
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

}
