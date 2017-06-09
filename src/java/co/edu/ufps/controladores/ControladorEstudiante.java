/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.controladores;

import co.edu.ufps.modelo.Fachada;
import co.edu.ufps.modelo.dto.PersonaDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author marlonguerrero
 */
public class ControladorEstudiante extends HttpServlet {
    
    private PersonaDTO estudiante;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void registrarEstudiante(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        String celular = request.getParameter("celular");
        int idTipo = 3;
        Fachada f = new Fachada();
        PrintWriter out = response.getWriter();
        try {
            if (estudiante != null) {
                out.write("true");
                estudiante = f.registrarPersona(codigo, nombre, apellido, correo, contrasena, celular, idTipo);
            } else {
                out.write("false");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    public void ingresar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (estudiante != null) {
            request.getSession().setAttribute("estudiante", estudiante);
            response.sendRedirect("/Ova/seccion/home.jsp");
        }
        //RequestDispatcher dispatcher = request.getRequestDispatcher("seccion/home.html");
        //dispatcher.forward(request, response);

    }
    
    public void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String rel = "false";
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String contrasena = request.getParameter("contrasena");
        Fachada f = new Fachada();
        PrintWriter out = response.getWriter();
        try {
            estudiante = f.iniciarSesion(codigo, contrasena);
            if (estudiante != null) {
                rel = "true";
            }
            out.write(rel);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void cerrarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getSession().invalidate();
        response.sendRedirect("/Ova/");
        
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
        if (request.getParameter("go") != null) {
            ingresar(request, response);
        } else if (request.getParameter("ini") != null) {
            iniciarSesion(request, response);
        } else if (request.getParameter("out") != null) {
            cerrarSesion(request, response);
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
        if (request.getParameter("send") != null) {
            registrarEstudiante(request, response);
        } else if (request.getParameter("send2") != null) {
            iniciarSesion(request, response);
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
