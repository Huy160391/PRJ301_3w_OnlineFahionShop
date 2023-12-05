<%-- 
    Document   : Menu1
    Created on : Aug 22, 2023, 10:22:14 AM
    Author     : tinit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> 
<link href="https://fonts.googleapis.com/css?family=Dancing+Script|Itim|Lobster|Montserrat:500|Noto+Serif|Nunito|Patrick+Hand|Roboto+Mono:100,100i,300,300i,400,400i,500,500i,700,700i|Roboto+Slab|Saira" rel="stylesheet">
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <div>
            <a href="home"/><img style="width: 120px; border-radius: 50%; padding: 10px;float: left;" src="image\logo.jpg" alt="logo"/></a>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <div style="background-color: #cccccc; display: flex; justify-content: center;margin: 0 auto;border: 2px solid #ccc; border-radius: 10px;">
                <ul class="navbar-nav m-auto" style="font-family: 'Roboto Mono', monospace; font-size: 16px; font-weight: bold;">
                    <c:if test="${sessionScope.account.role == 1}">
                        <li class="nav-item">
                            <a class="nav-link" href="account" style="color: black">Accounts</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.account.role == 1}">
                        <li class="nav-item">
                            <a class="nav-link" href="product" style="color: black">Products</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.account.role == 1}">
                        <li class="nav-item">
                            <a class="nav-link" href="order?action=getAll" style="color: black">Orders</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account != null}">
                        <li class="nav-item">                        
                            <a class="nav-link" href="auth?action=logout" style="color: black"><i class='fa fa-sign-out fa-2x' style='color:#161c12'> Logout</i></a>
                        </li>                      
                        <li class="nav-item">
                            <a class="nav-link" href="#" style="color: black"></a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp" style="color: black;"/><i class='fa fa-sign-in fa-2x' style='color:#161c12'> Login</i></a>
                        </li>
                    </c:if>

                </ul>
            </div>


            <a class="btn btn-success btn-sm ml-3" href="Cart.jsp">
                <i class="fa fa-shopping-cart"></i> Cart
                <span class="badge badge-light">${sessionScope.size}</span>
            </a>
            <a class="btn btn-success btn-sm ml-3" href="order">
                <i class="fa fa-money-bill"></i> Order
            </a>

        </div>
    </div>
</nav>
<c:if test="${sessionScope.account != null}">
    <section class="jumbotron text-center"style="padding: 15px">
        <div class="container" >
            <h1 class="jumbotron-heading">Welcome <br> <a href="#" style="font-family:monospace; font-weight: bold;font-family: 'Noto Serif', serif; color: dimgrey; font-size: 20px; font-style: italic">${sessionScope.account.fullName}</a></h1>
        </div>
    </section>
</c:if>
<!--end of menu-->
