<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <jsp:include page="Menu.jsp"></jsp:include>
        <div class="container" style="display: flex; flex-direction: column; align-items: center; justify-content: center; height: 80vh !important;border: 1px solid #ccc; box-shadow: rgba(0, 0, 0, 0.24) 0px 1px 2px;margin-top: 25px;background-color: #F5EFE9">
            <form action="auth?action=register" method="post" class="form-signup" style="width: 60%">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Fashion Store - Register</h1>
                <p class="text-danger">${error}</p>
                <input name="username" type="text" id="user-name" class="form-control mb-3" placeholder="Username" required="" autofocus="">
                <input name="password" type="password" id="user-pass" class="form-control mb-3" placeholder="Password" required autofocus="">
                <input name="repassword" type="password" id="user-repeatpass" class="form-control mb-3" placeholder="Confirm Password" required autofocus="">
                <input name="fullName" type="text" id="user-repeatpass" class="form-control mb-3" placeholder="Your name" required autofocus="">
                <input name="phoneNumber" type="text" id="user-repeatpass" class="form-control mb-3" placeholder="Phone number" required autofocus="">
                <input name="email" type="text" id="user-repeatpass" class="form-control mb-3" placeholder="Email" required autofocus="">
                <input name="address" type="text" id="user-repeatpass" class="form-control mb-3" placeholder="Address" required autofocus="">
                <div style="display: flex; align-items: center; justify-content: center"><input class="btn" type="submit" value="Register" style="background: linear-gradient(274deg, #EDB554 0%, #EDB554 100%); border-radius: 99px; width: 70%"></div><br/>
                Already have account, <a href="login.jsp">Login</a><br/>
            </form>

        </div>
    </body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
