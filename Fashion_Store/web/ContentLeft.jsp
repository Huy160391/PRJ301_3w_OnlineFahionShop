<%-- 
    Document   : ContentLeft1
    Created on : Aug 22, 2023, 10:16:33 AM
    Author     : tinit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h4> Categories</h4>
<div class="row">
    <div class="col-md-3" style="padding:  10px 10px 10px 10px;display: flex; justify-content: center">
        <a class="${choose == o.getId() ? "active" : ""}" style="text-align: center; font-weight: bold; font-size: 20px; width: 80%; border-radius: 99px; border: 2px solid #000000;" href="home">All</a>
    </div>

    <c:forEach items="${listCategory}" var="o">
        <div class="col-md-3" style="padding:  10px 10px 10px 10px; display: flex; justify-content: center">
            <a class="${choose == o.getId() ? "active" : ""}" style="text-align: center; font-weight: bold; font-size: 20px; width: 80%; border-radius: 99px; border: 2px solid #000000;" href="category?categoryId=${o.getId()}">${o.getCategoryName()}</a>
        </div>
    </c:forEach>
</div>


