<%-- 
    Document   : ConfirmCode
    Created on : Mar 16, 2022, 3:08:04 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }

            .form-login {
                width: 50%;
                margin: 5% auto;
            }

            .form-login h2 {
                font-size: 40px;
                text-align: center;
            }

            .form-login form {
                border: 3px solid #f1f1f1;
            }

            .form-login .alert {
                padding: 20px;
                background-color: #f44336;
                color: white;
                width: 90%;
                margin: 0 auto;
            }

            .form-login .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .form-login .closebtn:hover {
                color: black;
            }

            .form-login input[type=text],
            .form-login input[type=email],
            .form-login input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            .form-login button {
                background-color: #001489;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            .form-login cancelbtn:hover {
                opacity: 0.8;
                text-decoration: none;
            }

            .form-login .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
                text-decoration: none;
                color: #fff;
            }

            .form-login .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
            }

            .form-login .container {
                padding: 16px;
            }

            .form-login span.psw {
                float: right;
                padding-top: 16px;
            }

            @media screen and (max-width: 300px) {
                .form-login span.psw {
                    display: block;
                    float: none;
                }

                .form-login .cancelbtn {
                    width: 100%;
                }
            }
        </style>
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-login">
            <h2>Confirm Code</h2>
            <form action="changeAccount" method="POST">
                <div class="imgcontainer">
                    <img src="images/chelseafc.png" alt="" class="logo" width="100px" height="100px">
                </div>
                <div class="container">
                    <label for="email"><b>Email</b></label>
                    <input readonly type="email" placeholder="" value="${account.email}" name="email" required>
                    
                    <label for="name"><b>User Name</b></label>
                    <input type="text" placeholder="Enter Name" value="${account.userName}" name="name" required>
                    
                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" value="${account.password}"name="pass" required>
                    
                    <button type="submit">Confirm</button>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <a href="home" class="cancelbtn">Cancel</a>
                </div>
            </form>
        </div>
    </body>
</html>
