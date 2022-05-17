<%-- 
    Document   : Header
    Created on : Feb 18, 2022, 7:40:17 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   

        <style>
            header {
                width: 100%;
                background-color: #001489;
            }

            header ul {
                list-style: none;
                padding-left: 0;
                display: inline-block;
            }

            header li {
                display: inline-block;
            }

            header a {
                text-decoration: none;
            }

            header a:hover {
                text-decoration: none;
            }

            .top-header {
                width: 100%;
            }

            .top-header .logo {
                width: 100%;
            }

            .top-header .logo-team {
                width: 100%;
                text-align: center;
            }

            .top-header .logo-team li {
                margin: 10px 0;
            }

            .top-header .list-brand {
                width: 100%;
                text-align: center;
            }

            .top-header .list-brand li {
                margin: 35px 10px;
            }

            .top-header .icons-social-media {
                width: 100%;
                text-align: center;
            }

            .top-header .icons-social-media li {
                margin: 39px 4px;
            }

            .top-header .icons-social-media .fa {
                padding: 10px;
                width: 40px;
                font-size: 20px;
                color: #fff;
                border: 1px solid #fff;
                text-align: center;
                border-radius: 50%;
            }

            .top-header .icons-social-media .fa:hover {
                background-color: white;
                color: #001489;
                border: 1px solid #001489;
            }

            .top-header .icons-social-media .fa:focus {
                background-color: white;
                color: #001489;
                border: 1px solid #001489;
            }

            .top-header .icons-login {
                width: 100%;
                text-align: center;
            }

            .top-header .icons-login li {
                margin: 37px 7px;
            }

            .top-header .icons-login .fa {
                padding: 15px 30px;
                color: #fff;
                font-size: 15px;
                background: #d8302f;
                border-radius: 50px;
                border: 1px solid white;
            }

            .top-header .icons-login .fa:hover {
                color: #001489;
                background-color: #fff;
            }

            .top-header .icons-login .fa:focus {
                color: #001489;
                background-color: #fff;
            }

            .top-header .account{
                width: 100%;
                text-align: center;
            }

            .top-header .account li{
                margin: 36px 10px;
            }

            .top-header .account a{
                font-size: 20px;
                color: #fff;
            }

            .top-header .account .fa{
                padding: 15px 15px;
                color: #fff;
                font-size: 15px;
                border: 1px solid white;
            }

            .top-header .account .fa:hover{
                color: #001489;
                background-color: #fff;
                border: 1px solid #001489;
            }

            .top-header .account .fa:focus{
                color: #001489;
                background-color: #fff;
                border: 1px solid #001489;
            }

            .middle-header{
                width: 100%;
            }

            .middle-header .list-manager{
                width: 100%;
                text-align: center;
            }

            .middle-header .list-manager li{
                margin: 10px 20px;
                border: 1px solid #fff;
                padding: 10px;
            }

            .middle-header .list-manager a{
                font-size: 20px;
                color: #fff;
            }

            .bottom-header {
                width: 100%;
                background-color: #fff;
                border: 1px solid grey;
                height: 100px;
            }

            .bottom-header .list-menu {
                width: 100%;
                text-align: center;
            }

            .bottom-header .list-menu li {
                text-align: center;
                padding: 10px 5px;
                margin: 20px 20px;
            }

            .bottom-header .list-menu a {
                font-size: 20px;
                text-transform: uppercase;
                font-weight: bold;
                color: #001489;
            }

            .bottom-header .list-menu a:hover {
                text-decoration: none;
                color: #d8302f;
            }

            .bottom-header .list-menu a:focus {
                text-decoration: none;
                color: #d8302f;
            }

            .bottom-header .input-group {
                width: 100%;
                margin: 20px 10%;
            }

            .bottom-header .input-group input {
                width: 65%;
                height: 50px;
                font-size: 20px;
                padding: 10px 20px;
                outline: none;
                border: 2px solid #d8302f;
            }

            .bottom-header .input-group .fa {
                font-size: 20px;
                color: #140A47;
                text-align: center;
                outline: none;
                background-color: #d8302f;
            }

            .bottom-header .input-group button{
                width: 15%;
                height: 50px;
                padding: 10px;
                outline: none;
                border: 2px solid #d8302f;
                background-color: #d8302f;
            }

            .bottom-header .input-group button:hover {
                outline: none;
            }

            .bottom-header .input-group button:focus {
                outline: none;
            }


        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <header>

            <div class="container">
                <div class="top-header">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="logo">
                                <div class="row">
                                    <div class="col-md-3">
                                        <ul class="logo-team">
                                            <li><img src="images/chelseafc.png" width="100px" height="100px" alt="Logo">
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-9">
                                        <ul class="list-brand">
                                            <li><img src="images/nike.png" width="100px" height="50px" alt="Nike"></li>
                                            <li><img src="images/3.png" width="100px" height="50px" alt="3"></li>
                                            <li><img src="images/trivago.png" width="100px" height="50px" alt="Trivago">
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="icons">
                                <div class="row">
                                    <div class="col-md-5">
                                        <ul class="icons-social-media">
                                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                            <li><a href="#" class="youtube"><i class="fa fa-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-7">
                                        <c:if test="${account == null}">
                                            <ul class="icons-login">
                                                <li><a href="Login.jsp" class="user"><i class="fa fa-user">&nbspLogin</i></a></li>
                                                <li><a href="Register.jsp" class="register"><i
                                                            class="fa fa-registered">&nbspRegister</i></a></li>
                                            </ul>
                                        </c:if>
                                        <c:if test="${account != null}">
                                            <ul class="account">
                                                <li><a href="#">Hello ${account.userName}</a></li>
                                                <li><a href="logout"><i class="fa fa-sign-out">Logout</i></a></li>
                                            </ul> 
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:useBean id="dao" scope="page" class="dao.DAO" />
                <div class="middle-header">
                    <ul class="list-manager">
                        <c:if test="${account != null}">
                            <li><a href="loadFavorite"><span>&#128077;</span> Favorite ${dao.totalFavorit(account.userId)}</a></li>
                            <li><a href="ChangeAccount.jsp"><span>🔑</span> Change Account </a></li>
                                <c:if test="${account.isAdmin}">
                                <li><a href="managerAccount"><span>👨🏼‍💼</span> Manager </a></li>
                                </c:if>
                            </c:if>
                    </ul>
                </div> 
                <div class="bottom-header">
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-menu">
                                <li><a href="home">Home</a></li>
                                <li><a href="loadNews">News</a></li>
                                <li><a href="loadPlayer">Teams</a></li>
                                <li><a href="About.jsp">About</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <form action="search" method="post">
                                <div class="input-group">
                                    <input id="text-input" value="" type="text" name="text-input" placeholder="Search">
                                    <button id="btn-search" disabled="" type="sumit"><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
    <script>
        $('#text-input').keyup(function () {

            if ($('#text-input').val() == "") {
                $('#btn-search').attr('disabled', true);
            } else {
                $('#btn-search').attr('disabled', false);
            }
        });
    </script>
</html>
