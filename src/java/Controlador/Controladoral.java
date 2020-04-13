/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class Controladoral extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion2=request.getParameter("accion");
        switch (accion2){
            case "Principalal": 
                request.getRequestDispatcher("Principalal.jsp").forward(request, response);
                break;
            case "Cursosal":
                request.getRequestDispatcher("Cursosal.jsp").forward(request, response);
                    break;
            case "Notasal":
                request.getRequestDispatcher("Notasal.jsp").forward(request, response);
                    break;
            case "Horarioal":
                request.getRequestDispatcher("Horarioal.jsp").forward(request, response);
                    break;
                    case "saludoal":
                request.getRequestDispatcher("saludoal.jsp").forward(request, response);
                    break;
             default:
                        throw new AssertionError();
        }
    
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
}
}

