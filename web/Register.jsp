<%-- 
    Document   : Register
    Created on : Feb 18, 2022, 7:40:56 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="css/register.css" rel="stylesheet" type="text/css"/>

        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: white;
            }

            .form-register {
                width: 50%;
                margin: 3% auto;
            }

            .form-register h1 {
                text-align: center;
                font-size: 40px;
            }

            .form-register * {
                box-sizing: border-box;
            }

            .form-register .container {
                padding: 16px;
                background-color: white;
            }

            .form-register input[type=text],
            .form-login input[type=email],
            .form-register input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            .form-register input[type=text]:focus,
            .form-register input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            .form-register hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            .form-register .registerbtn {
                background-color: #001489;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .form-register .registerbtn:hover {
                opacity: 1;
            }

            .form-register a {
                color: dodgerblue;
            }

            .form-register .signin {
                background-color: #f1f1f1;
                text-align: center;
            }

            .form-register .alert {
                padding: 20px;
                background-color: #f44336;
                color: white;
                width: 100%;
                margin: 10px auto;
            }

            .form-register .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .form-register .closebtn:hover {
                color: black;
            }

        </style>
    </head>
    <body>
        <div class="form-register">
            <form action="register" method="post">
                <div class="container">
                    <h1>Register</h1>
                    <hr>
                    ${requestScope.alert1}
                    ${requestScope.alert2}
                    <label for="user"><b>User Name</b></label>
                    <input type="text" placeholder="Enter User Name" name="user" id="user" required>
                    
                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="pass" id="psw" required>

                    <label for="psw-repeat"><b>Repeat Password</b></label>
                    <input type="password" placeholder="Repeat Password" name="repass" id="psw-repeat" required>
                    <hr>

                    <button type="submit" class="registerbtn">Register</button>
                </div>

                <div class="container signin">
                    <p>Already have an account? <a href="Login.jsp">Login</a>.</p>
                </div>
            </form>
        </div>
    </body>
</html>
