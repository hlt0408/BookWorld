/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Huizhi
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/bookworld", "bookworld", "bookworld");
            Statement st = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = con.prepareStatement("SELECT email, password, firstname, lastname FROM customer WHERE email = ? AND password = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");

                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("firstname", firstname);
                session.setAttribute("lastname", lastname);
                System.out.println(firstname);
                String redirectURL = "/BookWorld/user-board";
                response.sendRedirect(redirectURL);
            } else {
                //out.println(email + password);
                out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
                out.println("<html>");
                out.println("<head>");
                out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
                out.println("<title>Log In</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1 align=\"center\">OOps!!!</h1>");
                out.println("<section class=\"main\">");
                out.println("<center><h1>Password and Email does not match!</h1></center>");
                out.println("<center><a href=\"index.jsp\"><p><input type=\"button\" id=\"submit\" value=\"RETURN\"></p></a></center>");
                out.println("</section>");
                out.println("</body>");
                out.println("</html>");
            }
        } catch (SQLException e2) {
            System.out.println("SQLException" + e2.toString());
            response.sendRedirect("index.jsp");

        } catch (ClassNotFoundException e3) {
            System.out.println("ClassNotFoundException" + e3.toString());
            response.sendRedirect("index.jsp");

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
        processRequest(request, response);
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
        processRequest(request, response);
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
