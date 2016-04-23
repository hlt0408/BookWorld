package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hlt04
 */
@WebServlet(urlPatterns = {"/aboutus", "/contactus", "/inventory", "/item", "/addToCart", "/viewCart",
    "/updateCart", "/checkout", "/purchase", "/change-password", "/purchase-history", "/user-board"})
public class ControllerServlet extends HttpServlet {

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
        System.out.println("you are in ControllerServlet.java");
        String userPath = request.getServletPath();

        // if inventory page is requested
        if (userPath.equals("/inventory")) {
            // TODO: Implement inventory request
            userPath = "/inventory";
            request.setAttribute("title", "inventory");
            request.setAttribute("inventoryactive", true);

        } else if (userPath.equals("/item")) {
            // TODO: Implement item page request
            request.setAttribute("title", "item");
            userPath = "/item";
            // if aboutus page is requested
        } else if (userPath.equals("/aboutus")) {
            // TODO: Implement aboutus page request
            request.setAttribute("title", "aboutus");
            request.setAttribute("aboutactive", true);
            userPath = "/aboutus";
        } else if (userPath.equals("/contactus")) {
            // TODO: Implement contactus page request
            request.setAttribute("title", "contactus");
            request.setAttribute("contactusactive", true);

            userPath = "/contactus";

            // if checkout page is requested
        } else if (userPath.equals("/checkout")) {
            // TODO: Implement checkout page request
            request.setAttribute("title", "checkout");
            userPath = "/checkout";
            // if user switches language
        } 

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
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

        String userPath = request.getServletPath();

        // if addToCart action is called
        if (userPath.equals("/addToCart")) {
            // TODO: Implement add product to cart action
            request.setAttribute("title", "addToCart");
            userPath = "/addToCart";
            
            // if updateCart action is called
        } else if (userPath.equals("/updateCart")) {
            // TODO: Implement update cart action
            request.setAttribute("title", "updateCart");
            userPath = "/updateCart";
            // if purchase action is called
        } else if (userPath.equals("/purchase")) {
            // TODO: Implement purchase action
            request.setAttribute("title", "purchase");
            userPath = "/purchase";
            
        } else if (userPath.equals("/change-password")) {
            userPath = "/change-password";
            request.setAttribute("changepasswordactive", true);
            request.setAttribute("title", "change-password");
            
        } else if (userPath.equals("/purchase-history")) {
            userPath = "/purchase-history";
            request.setAttribute("purchasehistoryctive", true);
            request.setAttribute("title", "Purchase History");
            
        } else if (userPath.equals("/user-board")) {
            userPath = "/user-board";
            request.setAttribute("title", "user-board");
            request.setAttribute("userboardactive", true);
            userPath = "/user-board";
        }

        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
