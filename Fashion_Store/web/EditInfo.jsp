<%-- 
    Document   : EditInfo1
    Created on : Aug 22, 2023, 10:17:13 AM
    Author     : tinit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Info</title>
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
       <%-- <jsp:include page="Menu.jsp"></jsp:include>--%>
        <div class="container" style="display: flex; flex-direction: column; justify-content: center;border: 1px solid #ccc; box-shadow: rgba(0, 0, 0, 0.24) 0px 1px 2px;margin-top: 50px;background-color: #F5EFE9; padding: 30px">
            <h2>Edit Profile</h2>
            <div id="editEmployeeModal">
                        <form action="editinfo" method="post">
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${showacc.getA_id()}" name="A_id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${showacc.getA_name()}" name="A_name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input value="${showacc.getA_pass()}" name="A_pass" type="password" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input value="${showacc.getA_repass()}" name="A_repass" type="password" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Phone number</label>
                                    <input value="${showacc.getA_phone()}" name="A_phone" type="text" class="form-control" required>
                                </div>               
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${showacc.getA_email()}" name="A_email" type="email" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input value="${showacc.getA_address()}" name="A_address" type="text" class="form-control" required>
                                </div>	
                                <input type="submit" class="btn btn-info" value="Save" style="background: linear-gradient(274deg, #EDB554 0%, #EDB554 100%); border-radius: 99px; width: 30%">
                                <input onclick="window.location.href = 'home'" type="button" class="btn btn-default" value="Cancel" style="border-radius: 99px; width: 30%">
                                
                        </form>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
