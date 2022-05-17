<%-- 
    Document   : DetailNews
    Created on : Feb 21, 2022, 9:47:21 PM
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .detail-news *{
                font-size: 20px;
            }

            .detail-news {
                width: 100%;
                margin: 40px 0;
            }

            .detail-news .frame-detail-news {
                width: 100%;
            }

            .detail-news .top-news {
                width: 100%;
                margin: 40px 0;
            }

            .detail-news .top-news h4 {
                font-size: 16px;
                font-weight: bold;
                background-color: #0033ff;
                color: #fff;
                border: 1px solid #001489;
                padding: 8px;
                width: 180px;
                height: 40px;
                text-align: center;
            }

            .detail-news .top-news h2 {
                font-size: 60px;
                color: #001489;
                font-family: fantasy;
                margin: 20px 0;
            }

            .detail-news .top-news h6 {
                font-size: 20px;
                color: grey;
                margin: 20px 0;
            }

            .detail-news .img-title {
                width: 100%;
            }

            .detail-news .img-title img {
                border: 2px solid #001489;
            }

            .detail-news .bottom-news{
                width: 100%;
            }

            .detail-news .bottom-news h3{
                margin: 40px 0;
                font-size: 40px;
                color: #0033ff;
            }

            .detail-news .bottom-news p{
                font-size: 20px;
            }

            .detail-news .bottom-news h5{
                font-size: 25px;
                color: #001489;
                margin: 40px 0;
            }

            .detail-news .detail-content {
                width: 100%;
            }

            .detail-news .detail-content img{
                width: 100%;
                height: auto;
                margin: 20px 0;
            }

            .detail-news .detail-content p{
                margin: 20px 0;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="detail-news">
                <div class="frame-detail-news">
                    <div class="container">
                        <div class="top-news">
                        <c:forEach items="${listTypeNews}" var="listTN">
                            <c:if test="${listTN.typeId == news.typeId}">
                                <h4>${listTN.typeName}</h4>
                            </c:if>
                        </c:forEach>
                        <h2>${news.title}</h2>
                        <h6>${news.dateLetter}</h6>
                    </div>
                </div>
                <div class="img-title">
                    <img src="${news.img}" alt="Image" width="100%" height="700px">
                </div>
                <div class="container">
                    <div class="bottom-news">
                        <h3>${news.shortDescription}</h3>
                        <c:forEach items="${content}" var="con">
                            <p>${con}</p>
                        </c:forEach>
                        <div class="detail-content">
                            <c:forEach items="${detail}" var="det">
                                <p>${det}</p>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
