<%-- 
    Document   : Slideshow
    Created on : Feb 18, 2022, 7:42:19 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .carousel-inner img {
                width: 100%;
                height: 700px;
                border-top: 1px solid #fff;
                border-bottom: 1px solid #fff;
            }
            
            .carousel-inner h3{
                font-family: fantasy;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <div class="slides-show">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/winners.jpg" alt="" width="100%" height="500px">
                        <div class="carousel-caption">
                            <h3 style="font-size: 40px;">Nobody who ever gave his best regretted it.</h3>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/wallpapers.jpg" alt="" width="100%" height="500px">
                        <div class="carousel-caption">
                            <h3 style="font-size: 40px;">It’s not whether you get knocked down, it’s whether you get back up.</h3>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/stadium.jpg" alt="" width="100%" height="500px">
                        <div class="carousel-caption">
                            <h3 style="font-size: 40px">If you Don’t Practice
                                You Don’t Derserve
                                to win!</h3>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </body>
</html>
