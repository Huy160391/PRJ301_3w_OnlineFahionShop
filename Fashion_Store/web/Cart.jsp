<%-- 
    Document   : Cart1
    Created on : Aug 22, 2023, 10:15:32 AM
    Author     : tinit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Shopping</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="shopping-cart">
            <c:choose>
                <c:when test="${sessionScope.size == 0}">
                    <div class="container" style="display: flex; flex-direction: column; height: 100vh; justify-content: center; align-items: center;">
                        <image src="image/emptyCart.png" style="width: 500px; height: 300px;" />
                        <h1>Your cart is empty!</h1>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="px-4 px-lg-0">

                        <div class="pb-5">
                            <div class="container">
                                <div class="row" style="border: 1px solid #ccc; box-shadow: rgba(0, 0, 0, 0.24) 0px 1px 2px; padding-bottom: 50px">
                                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm">

                                        <!-- Shopping cart table -->
                                        
                                            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Cart</div>
                                            <c:set var="o" value="${sessionScope.cart}" />
                                            <c:forEach items="${o.items}" var="i">
                                                <div class="row" style="margin: 20px; border: 1px solid #ccc; box-shadow: rgba(0, 0, 0, 0.24) 0px 1px 2px;margin-top: 50px;background-color: #F5EFE9; padding: 30px">
                                                    <img src="${i.product.img}" alt="" style="width: 100px; height: 120px" class="col-md-3">

                                                    <div style="display: flex; flex-direction: column;justify-content: center" class="col-md-6">
                                                        <div class="ml-3 d-inline-block align-middle">
                                                            <h5 class="mb-0"><a href="productDetail?productId=${i.product.id}" class="text-dark d-inline-block">${i.product.productName}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                        </div>
                                                        <div class="align-middle"><strong>Price: ${i.price}</strong></div>
                                                        <div class="align-middle">
                                                            <strong>Quantity: </strong>
                                                            <a href="addToCart?action=descrease&id=${i.product.id}&number=1"><button class="btnSub">-</button></a> 
                                                            <strong>${i.quantity}</strong>
                                                            <a href="addToCart?action=increase&id=${i.product.id}&number=+1"><button class="btnAdd">+</button></a>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3" style="display: flex; justify-content: center; align-items: center">
                                                        <a href="addToCart?action=delete&id=${i.product.id}&number=0" class="btn" style="height: 30%;background-color: red;color: white"><img src="image/remove.png" style="width:30px; height:30px"/></a>
                                                    </div>
                                                </div>

                                            </c:forEach>
                                        </div>
                                        <!-- End -->
                                        <div style="display: flex; align-items: center;justify-content: center" class="col-lg-12 bg-white">
                                            <h4 style="color: red">Total:  ${sessionScope.totalPrice} VND</h4>
                                        </div>
                                        <div style="display: flex; align-items: center;justify-content: center" class="col-lg-12 bg-white">
                                            <a href="./prepareCheckout" class="btn" style="background: linear-gradient(274deg, #EDB554 0%, #EDB554 100%); border-radius: 99px; width: 20%;color: white"><b>Order</b></a>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
            <jsp:include page="Footer.jsp" />
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
</html>
