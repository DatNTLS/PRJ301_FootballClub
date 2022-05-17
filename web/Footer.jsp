<%-- 
    Document   : Footer
    Created on : Feb 18, 2022, 7:40:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            footer {
                width: 100%;
                background-color: #001489;
            }

            footer ul {
                list-style: none;
                padding-left: 0;
            }

            footer a {
                text-decoration: none;
            }

            .top-footer {
                width: 100%;
                background-color: #fff;
                border-top: 1px solid grey;
            }

            .top-footer .list-brand {
                width: 100%;
                text-align: center;
            }

            .top-footer .list-brand li {
                display: inline-block;
                margin: 40px 20px;
            }

            .middle-footer {
                width: 100%;
            }

            .middle-footer h1 {
                padding: 5px 0;
                text-align: center;
                font-size: 20px;
                font-family: fantasy;
                color: #fff;
                border-bottom: 1px solid #fff;
            }

            .middle-footer .join-us {
                width: 100%;
            }

            .middle-footer .join-us img {
                display: block;
                margin: 10px auto;
            }

            .middle-footer .join-us p {
                font-size: 15px;
                color: #fff;
                margin: 5px auto;
            }

            .middle-footer .icons-social-media {
                width: 100%;
                text-align: center;
                border-top: 1px solid #fff;
            }

            .middle-footer .icons-social-media li {
                display: inline-block;
                margin: 40px 10px;
            }

            .middle-footer .icons-social-media .fa {
                padding: 10px;
                width: 40px;
                font-size: 20px;
                color: #fff;
                border: 1px solid #fff;
                text-align: center;
                border-radius: 50%;
            }

            .middle-footer .icons-social-media .fa:hover {
                background-color: #fff;
                color: #001489;
                border: 1px solid #001489;
            }

            .middle-footer .icons-social-media .fa:focus {
                background-color: #fff;
                color: #001489;
                border: 1px solid #001489;
            }

            .middle-footer .menu{
                width: 100%;
            }

            .middle-footer .list-menu{
                width: 100%;
            }

            .middle-footer .list-menu li{
                text-align: center;
                margin: 10px 0;
            }

            .middle-footer .list-menu a{
                color: #fff;
                font-size: 20px;
            }

            .middle-footer .contact{
                width: 100%;
            }

            .middle-footer .list-contact{
                width: 100%;
            }

            .middle-footer .list-contact li{
                font-size: 20px;
                color: #fff;
                margin: 10px 0;
            }

            .middle-footer .list-contact i{
                font-size: 20px;
                color: #fff;
            }

            .middle-footer .map{
                width: 100%;
            }

            .bottom-footer {
                width: 100%;
                border-top: 1px solid #fff;
            }

            .bottom-footer p {
                text-align: center;
                font-size: 15px;
                color: #fff;
                padding: 20px 0;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <footer>
            <div class="top-footer">
                <ul class="list-brand">
                    <li><img src="images/nike.png" alt="Nike"></li>
                    <li><img src="images/3.png" alt="3"></li>
                    <li><img src="images/trivago.png" alt="Trivago"></li>
                </ul>
            </div>
            <div class="middle-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="join-us">
                                <h1>Join Us</h1>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="images/chelseafc.png" alt="Logo" width="100px" height="100px">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Most of our events have hard and easy route choices as we are always keen to
                                            encourage new riders.</p>
                                    </div>
                                </div>
                                <ul class="icons-social-media">
                                    <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="#" class="youtube"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="menu">
                                <h1>Menu</h1>
                                <ul class="list-menu">
                                    <li><a href="home">Home</a></li>
                                    <li><a href="loadNews">News</a></li>
                                    <li><a href="loadPlayer">Teams</a></li>
                                    <li><a href="About.jsp">About</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="contact-us">
                                <h1>Contact Us</h1>
                                <ul class="list-contact">
                                    <li><i class="fa fa-map-marker"></i> &ensp;Chelsea, London, UK</li>
                                    <li><i class="fa fa-phone"></i> &ensp;0123456789</li>
                                    <li><i class="fa fa-envelope"></i> &ensp;datnthe153704@fpt.vn</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="map">
                                <iframe
                                    src="https://goo.gl/maps/ydh973uSdFyUak7R6"
                                    width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer">
                <p>Copyright © 2022 Distributed by CFC</p>
            </div>
        </footer>
    </body>
</html>
