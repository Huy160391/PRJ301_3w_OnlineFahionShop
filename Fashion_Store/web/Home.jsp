<%-- 
    Document   : Home1
    Created on : Aug 22, 2023, 10:19:28 AM
    Author     : tinit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container" style="margin-top:20px">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb" style="background-color: #343a40">
                                <li class="breadcrumb-item" ><a href="home" style="color: white; font-weight: bold;" >Home</a></li>
                                <li class="breadcrumb-item"><a href="#" style="color: white; font-weight: 500;" >Category</a></li>
                                <li class="breadcrumb-item active" aria-current="#" style="color: white;">Product</li>


                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <jsp:include page="ContentLeft.jsp"></jsp:include>
                    <div class="row" >
                    <c:forEach items="${listProduct}" var="o">
                        <div class="col-12 col-md-6 col-lg-4" style="padding:  10px 10px 10px 10px">
                            <div class="card" style="padding: 20px; background-color: #EDB554">                                  
                                <img class="card-img-top" src="${o.getImg()}" alt="Card image cap" style="height: 300px; object-fit: contain;">
                                <div class="card-body">
                                    <h4 class="card-title show_txt" style="text-align: left; font-family: Impact Charcoal; font-style: italic;">${o.getProductName()}</h4>
                                    <p class="card-text show_txt" style="text-align: left">Size: ${o.getSize()}</p>
                                    <p class="card-text show_txt" style="text-align: left">Price: ${o.getPrice()} vnd</p>
                                    <div class="row">
                                        <div class="col">
                                            <a class="btn" style="background-color: #9C9B9A; color: white;font-weight: bold;" href="productDetail?productId=${o.getId()}" title="View Product">Detail</a>
                                        </div>
                                        <div class="col">
                                            <a href="addToCart?action=increase&id=${o.getId()}&number=+1" class="btn btn-success btn-block">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
        </div>
        <div style=" display: flex; justify-content: center; align-items: center;">                
            <c:forEach begin="1" end="${endP}" var="i">
                <a class="${tag==i?"active":""}" style="text-decoration: none;padding: 0.5rem 1rem;margin: 0.5rem;border: 1px solid #ccc;border-radius: 3px;" href="home?index=${i}">${i}</a>
            </c:forEach>
        </div>    
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>


