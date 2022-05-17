<%-- 
    Document   : Favorite
    Created on : Mar 9, 2022, 5:31:33 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

            .favorite {
                width: 100%;
                margin: 40px 0;
            }

            .favorite a {
                text-decoration: none;
            }

            .favorite a:hover {
                text-decoration: none;
            }

            .favorite h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }
            
            .favorite h1 span{
                color: #0033ff;
            }

            .favorite .frame-news {
                width: 100%;
                border: 1px solid #001489;
                margin: 20px 0;
            }

            .favorite .frame-news .img {
                width: 100%;
            }

            .favorite h5 {
                color: #140a47;
                background-color: #f1f1f1;
                text-align: center;
                margin: 40px 0;
                font-size: 40px;
                font-family: fantasy;
            }

            .favorite .frame-news h6 {
                background-color: #0033ff;
                width: 150px;
                height: 30px;
                font-size: 15px;
                text-align: center;
                color: #fff;
                padding: 5px 0;
                position: absolute;
                top: 0;
            }

            .favorite .frame-news img {
                border: 1px solid grey;
            }

            .favorite .short-description {
                width: 100%;
            }

            .favorite .short-description h2 {
                font-size: 20px;
                padding: 10px;
                color: #001489;
            }

            .favorite .short-description h3 {
                font-size: 15px;
                padding: 10px;
                color: black;
            }

            .favorite .short-description p {
                font-size: 18px;
                color: grey;
                padding: 5px 10px;
            }

            .favorite .short-description .remove{
                margin: 10px;
            }

            .favorite .short-description .remove a{
                padding: 5px;
            }

        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="favorite">
                <div class="container">
                <c:if test="${totalFa == 0}">
                    <h1>You have not liked any "<span>News</span>" yet</h1>
                </c:if>
                <c:if test="${totalFa != 0}">
                    <h1>My Favorite News</h1>
                    <c:forEach items="${listNews}" var="listN">
                        <div class="frame-news">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="detailNews?newsId=${listN.newsId}">
                                        <div class="img">
                                            <c:forEach items="${listTypeNews}" var="listTN">
                                                <c:if test="${listTN.typeId == listN.typeId}">
                                                    <h6>${listTN.typeName}</h6>
                                                </c:if>
                                            </c:forEach>
                                            <img src="${listN.img}" alt="Picture" width="100%" height="250px">
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-8">
                                    <div class="short-description">
                                        <h2>${listN.title}</h2>
                                        <h3>${listN.shortDescription}</h3>
                                        <p>${listN.datePublished}</p>
                                        <div class="remove"><a href="removeFavorite?newsId=${listN.newsId}&page=loadFavorite"><span style="font-size:15px">🗑️</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
