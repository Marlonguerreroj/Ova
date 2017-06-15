/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.controladores;

import co.edu.ufps.modelo.Fachada;
import co.edu.ufps.modelo.dto.PersonaDTO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author marlonguerrero
 */
public class ControladorPersona extends HttpServlet {

    private PersonaDTO persona = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void registrarPersona(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("here");
        response.setContentType("text/html;charset=UTF-8");
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        String celular = request.getParameter("celular");
        int idTipo = Integer.parseInt(request.getParameter("tipo"));
        Fachada f = new Fachada();
        PrintWriter out = response.getWriter();
        try {
            if (f.registrarPersona(codigo, nombre, apellido, correo, contrasena, celular, idTipo)) {
                out.write("true");
                persona = f.iniciarSesion(codigo, contrasena);
            } else {
                out.write("false");
                persona = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void ingresar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (persona != null) {
            request.getSession().setAttribute("persona", persona);
            if (persona.getTipo().getId() == 3) {
                response.sendRedirect("/Ova/seccion/home.jsp");
            } else {
                response.sendRedirect("/Ova/seccion/admin/principal.jsp");

            }
        }
    }

    public void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String rel = "false";
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String contrasena = request.getParameter("contrasena");
        Fachada f = new Fachada();
        PrintWriter out = response.getWriter();
        try {
            persona = f.iniciarSesion(codigo, contrasena);
            if (persona != null) {
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

    public void actualizarDatos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String celular = request.getParameter("celular");
        String ruta2 = getServletContext().getRealPath("/");
        ruta2 += "pFotos" + File.separator + persona.getCodigo();
        Part file = request.getPart("file");
        String fileName = "fotoPerfil.jpg";
        OutputStream out = null;
        String nuevaRuta = "";
        InputStream filecontent = null;
        Fachada f = new Fachada();
        PrintWriter out2 = response.getWriter();

        try {
            if (!file.getSubmittedFileName().equals("")) {

                File dir = new File(ruta2);
                if (!dir.exists()) {
                    dir.mkdir();
                }

                out = new FileOutputStream(new File(ruta2 + File.separator
                        + fileName));
                nuevaRuta = "/Ova/pFotos/" + persona.getCodigo() + File.separator
                        + fileName;
                filecontent = file.getInputStream();

                int read = 0;
                final byte[] bytes = new byte[1024];

                while ((read = filecontent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                }
            } else {
                nuevaRuta = persona.getImagen();
            }
            if (f.actualizarPersona(nombre, apellido, celular, nuevaRuta, persona.getCodigo())) {
                persona = f.iniciarSesion(persona.getCodigo(), persona.getContrasena());
                request.getSession().setAttribute("persona", persona);
                out2.write("true");
            } else {
                out2.write("false");
            }

        } catch (Exception fne) {
            fne.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }

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
            registrarPersona(request, response);
        } else if (request.getParameter("send2") != null) {
            iniciarSesion(request, response);
        } else if (request.getPart("file") != null) {
            actualizarDatos(request, response);
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
