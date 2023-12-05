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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Products</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit<b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="product?action=update" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                               
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${productEdit.getId()}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input value="${productEdit.getProductName()}" name="productName" type="text" class="form-control" required>
                                </div>               
                                <div class="form-group">
                                    <label>Price</label>
                                    <input value="${productEdit.getPrice()}" name="price" type="number" class="form-control" required>
                                </div> 
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input value="${productEdit.getQuantity()}" name="quantity" type="number" class="form-control" required>
                                </div> 
                                <div class="form-group">
                                    <label>Size</label>
                                    <input value="${productEdit.getSize()}" name="size" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input value="${productEdit.getImg()}" name="img" type="text" class="form-control" required>
                                </div>                       
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control" required>${productEdit.getDescription()}"</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="categoryId" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCategory}" var="category">
                                            <option <c:if test="${productEdit.getCategoryId() == category.getId()}" >selected=""</c:if> value="${category.getId()}">${category.getCategoryName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>				
                            </div>
                            <div class="modal-footer">
                                <input onclick="window.location.href = 'manager'" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
