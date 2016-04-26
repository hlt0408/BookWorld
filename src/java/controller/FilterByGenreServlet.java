/*
 */
package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author hlt04
 */
public class FilterByGenreServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, JSONException, ClassNotFoundException {
        StringBuilder sb = new StringBuilder();
        BufferedReader br = request.getReader();
        String str;
        while ((str = br.readLine()) != null) {
            sb.append(str);
        }
        JSONObject obj = new JSONObject(sb.toString());
        String genre = obj.getString("genre");
        System.out.println(genre);
        //System.out.println("you are in InventoryServlet.java");
        response.setContentType("application/json"); // response of json format
        // database path, in case lost database, you can find the path by right clicking "Java DB" under services table
        String connectionURL = "jdbc:derby://localhost:1527/bookworld";
        JSONObject jo = null; // container for single item
        PrintWriter out = response.getWriter(); // response
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            //ConnectionURL, username and password should be specified in getConnection()
            Connection conn = DriverManager.getConnection(connectionURL, "bookworld", "bookworld"); // connect database
            String sql = "SELECT * FROM BOOK where genre =?"; // choose all country database to match input
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, genre);
            ResultSet rs = st.executeQuery(); // execusion result

            JSONArray joa = new JSONArray(); // json array to accumulate each json item (jo)
            while (rs.next()) { // iterator of database execusion result
                jo = new JSONObject(); // initialize new json item
                // append 3 attributes to json item
                jo.append("Index", rs.getString("Index"));
                jo.append("Title", rs.getString("Title"));
                jo.append("Author", rs.getString("Author"));
                jo.append("Genre", rs.getString("Genre"));
                jo.append("Rating", rs.getInt("Rating"));
                jo.append("Path", rs.getString("Path"));
                jo.append("Price", rs.getString("Price"));
                joa.put(jo); // add single json item to json array joa
                //System.out.println(jo.toString());
            }
            out.write(joa.toString()); // return json array as string

            rs.close();
            st.close();
            conn.close();
        } catch (SQLException | JSONException ex) {
            ex.printStackTrace();
            System.out.println("Connect failed ! ");
        }

    }

    // this assignment only use get method, does not implement post
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
        try {
            processRequest(request, response);
            System.out.println("hi");
        } catch (SQLException ex) {
            System.out.println("hello");

            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JSONException ex) {
            Logger.getLogger(FilterByGenreServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FilterByGenreServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (JSONException | ClassNotFoundException ex) {
            Logger.getLogger(FilterByGenreServlet.class.getName()).log(Level.SEVERE, null, ex);
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
