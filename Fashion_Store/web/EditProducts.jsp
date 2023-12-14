<%-- 
    Document   : EditProducts1
    Created on : Aug 22, 2023, 10:18:10 AM
    Author     : tinit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Products</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <%--<jsp:include page="Menu.jsp"></jsp:include>--%>
        <div class="container" style="display: flex; flex-direction: column; justify-content: center;border: 1px solid #ccc; box-shadow: rgba(0, 0, 0, 0.24) 0px 1px 2px;margin-top: 50px;background-color: #F5EFE9; padding: 30px">					
            <h2>Edit Product</h2>
            <div id="editEmployeeModal">
                <form action="product?action=update" method="post">
                    <div class="form-group">
                        <label>ID</label>
                        <input value="${productEdit.getId()}" name="id" type="text" class="form-control" readonly required>
                    </div>
                    <div class="form-group">
                        <label>Product Name</label>
                        <input value="${productEdit.getProductName()}" name="productName" type="text" class="form-control" required>
                    </div>        
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control" required>${productEdit.getDescription()}"</textarea>
                    </div>

                    <div style="display: flex;">
                        <div class="form-group" style="display: flex;align-items: center;width: 50%">
                            <label>Category</label>
                            <select name="categoryId" class="form-select" aria-label="Default select example">
                                <c:forEach items="${listCategory}" var="category">
                                    <option <c:if test="${productEdit.getCategoryId() == category.getId()}" >selected=""</c:if> value="${category.getId()}">${category.getCategoryName()}</option>
                                </c:forEach>
                            </select>
                        </div> 
                        <div class="form-group" style="display: flex;align-items: center;width: 50%">
                            <label>Size</label>
                            <input value="${productEdit.getSize()}" name="size" type="text" class="form-control" required style="width: 70%">
                        </div>
                    </div>
                    <div style="display: flex;">
                        <div class="form-group" style="display: flex;align-items: center;width: 50%">
                            <label>Quantity </label>
                            <input value="${productEdit.getQuantity()}" name="quantity" type="number" class="form-control" required style="width: 70%">
                        </div> 
                        <div class="form-group" style="display: flex; align-items: center; width: 50%">
                            <label>Price </label>
                            <input value="${productEdit.getPrice()}" name="price" type="number" class="form-control" required style="width: 70%">
                        </div> 
                    </div>


                    <div class="form-group">
                        <label>Image</label>
                        <input value="${productEdit.getImg()}" name="img" type="text" class="form-control" required >
                    </div>                       

<input type="submit" class="btn btn-info" value="Save" style="background: linear-gradient(274deg, #EDB554 0%, #EDB554 100%); border-radius: 99px; width: 30%">
<input onclick="window.location.href = './product'" type="button" class="btn btn-default" value="Cancel" style="border-radius: 99px; width: 30%">
                    
                </form>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
