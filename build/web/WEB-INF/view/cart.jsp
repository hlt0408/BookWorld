<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="/WEB-INF/jspf/header.jspf"%>
    </head>
    <body>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <div id="wrapper">

            <%@include file="/WEB-INF/jspf/nav-user.jspf"%>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> Shopping Cart <small>get it!</small></h1>

                        </div>
                    </div>

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <tr class="info">
                                        <td><strong>Author</strong></td>
                                        <td><strong>Title</strong></td>
                                        <td><strong>Quantity</strong></td>
                                        <td><strong>Unit Price</strong></td>
                                        <td><strong>Total</strong></td>
                                    </tr>
                                    <jsp:useBean id="cart" scope="session" class="controller.CartBean" />
                                    <!--          No items in Shopping Cart-->
                                    <c:if test="${cart.lineItemCount==0}">
                                        <tr>
                                            <td colspan="5" style="text-align: center"><h4>---Cart is currently empty---</h4><br/>
                                        </tr>
                                        <!--          Display each item in Shopping Cart-->
                                    </c:if>
                                    <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">

                                        <form name="item" method="POST" action="/BookWorld/CartServlet">
                                            <tr>
                                                <td><strong><c:out value="${cartItem.author}"/></strong><br/></td>
                                                <td><strong><c:out value="${cartItem.title}"/></strong><br/></td>
                                                <td><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                                                    <input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size=''> 
                                                    <input type="submit" name="action" value="update">         
                                                    <input type="submit" name="action" value="delete">
                                                </td>
                                                <td>$<c:out value="${cartItem.unitCost}"/></td>
                                                <td>$<c:out value="${cartItem.totalCost}"/></td>
                                            </tr>
                                        </form>
                                        <!--          Total cost of the order-->
                                    </c:forEach>
                                    <tr class="info">
                                        <!--                  <td colspan="3"> </td>-->
                                        <td colspan="5" style="text-align:right;">Subtotal: $<c:out value="${cart.orderTotal}"/></td>
                                    </tr>
                                </table>
                                <p style="float:right"><a href="#"><input type="button" class="btn btn-sm btn-success" value="Check Out"/></a></p>
                                <p><a href="/BookWorld/inventory">Continue Shopping</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- /#page-wrapper -->
        </div>
        <%@include file="/WEB-INF/jspf/login.jspf"%>

        <%@include file="/WEB-INF/jspf/register.jspf"%>


    </body>

</html>