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
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hlt04
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

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
        String email = request.getParameter("emailid");
        String password = request.getParameter("pword");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver"); 
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/bookworld","bookworld","bookworld");
            Statement st = con.createStatement();
            String query ="INSERT INTO customer VALUES ('"+email+"','"+password+"','"+firstname+"','"+lastname+"')";
            st.execute(query);
            out.println("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
            out.println("<link rel=\"stylesheet\" href=\"StyleSheet.css\" type=\"text/css\">");
            out.println("<title>Log In</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1 align=\"center\">Congratulations!</h1>");
            out.println("<section class=\"main\">");
            out.println("<center><h1>Your account has been created!</h1></center>");
            out.println("<center><p>You can log in from the login page</center></p>");
            out.println("<center><a href=\"index.jsp\"><p><input type=\"button\" id=\"submit\" value=\"RETURN\"></p></a></center>");
            out.println("</section>");
            out.println("</body>");
            out.println("</html>");
        } catch(SQLException e2) {
            out.println("SQLException");
            out.println(email);
            out.println(password);
            out.println(firstname);
            out.println(lastname);
        } catch(ClassNotFoundException e3) {
            out.println("ClassNotFoundException");
            out.println(email);
            out.println(password);
            out.println(firstname);
            out.println(lastname);
        } catch(NullPointerException e4){
            out.println("NullPointerException");
            out.println(email);
            out.println(password);
            out.println(firstname);
            out.println(lastname);
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
