/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.controladores;

import co.edu.ufps.modelo.Fachada;
import co.edu.ufps.modelo.dto.PreguntaDTO;
import co.edu.ufps.modelo.dto.TemaDTO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marlonguerrero
 */
public class ControladorActividad extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void listarTemas(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Fachada f = new Fachada();
            ArrayList<TemaDTO> list;
            PrintWriter out = response.getWriter();
            list = f.listarTemas();
            Gson g = new Gson();
            String rel = g.toJson(list);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.write(rel);
        } catch (Exception e) {

        }
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void listarPreguntas(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String tema = request.getParameter("tema");
            Fachada f = new Fachada();
            ArrayList<PreguntaDTO> list;
            PrintWriter out = response.getWriter();
            list = f.listarPreguntas(tema);
            Gson g = new Gson();
            String rel = g.toJson(list);
            System.out.println(rel);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.write(rel);
        } catch (Exception e) {
            e.printStackTrace();

        }
    }



    protected void registrarPregunta(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("pregunta");
        String opcion1 = request.getParameter("opc1");
        String opcion2 = request.getParameter("opc2");
        String opcion3 = request.getParameter("opc3");
        String opcion4 = request.getParameter("opc4");
        String respuesta = request.getParameter("selRes");
        String id = request.getParameter("selTemas");
        PrintWriter out = response.getWriter();
        try {
            Fachada f = new Fachada();
            out.write("" + f.registrarPregunta(nombre, opcion1, opcion2, opcion3, opcion4, respuesta, id));
        } catch (Exception e) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("lstTema") != null) {
            listarTemas(request, response);
        } else if (request.getParameter("lstPreg") != null) {
            listarPreguntas(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("regPreg") != null) {
            registrarPregunta(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
