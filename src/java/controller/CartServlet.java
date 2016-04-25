package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CartBean;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hlt04
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})

public class CartServlet extends HttpServlet {   
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("in cart controller");
        String strAction = request.getParameter("action");
        if(strAction!=null && !strAction.equals("")) {
            if(strAction.equals("add")) {
                addToCart(request);
            } else if (strAction.equals("update")) {
                updateCart(request);
            } else if (strAction.equals("delete")) {
                deleteCart(request);
            }
        }
        response.sendRedirect("/BookWorld/cart");
    }
    
    //Delete item in shopping cart
    protected void deleteCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String strItemIndex = request.getParameter("itemIndex");
        CartBean cartBean = null;
   
        Object objCartBean = session.getAttribute("cart");
        if(objCartBean!=null) {
            cartBean = (CartBean) objCartBean ;
        } else {
            cartBean = new CartBean();
        }
        cartBean.deleteCartItem(strItemIndex);
    }
    
    //Update quantity of item in shopping cart
    protected void updateCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String strQuantity = request.getParameter("quantity");
        String strItemIndex = request.getParameter("itemIndex");
  
        CartBean cartBean = null;
   
        Object objCartBean = session.getAttribute("cart");
        if(objCartBean!=null) {
            cartBean = (CartBean) objCartBean ;
        } else {
            cartBean = new CartBean();
        }
        cartBean.updateCartItem(strItemIndex, strQuantity);
    }
    
    //Add item to shopping cart
    protected void addToCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String strAuthor = request.getParameter("author");
        String strTitle = request.getParameter("title");
        String strPrice = request.getParameter("price");
        String strQuantity = request.getParameter("quantity");
        System.out.println(strAuthor);
        CartBean cartBean = null;
   
        Object objCartBean = session.getAttribute("cart");
 
        if(objCartBean!=null) {
            cartBean = (CartBean) objCartBean ;
        } else {
            cartBean = new CartBean();
            session.setAttribute("cart", cartBean);
        }
   
        cartBean.addCartItem(strAuthor, strTitle, strPrice, strQuantity);
    }

}
