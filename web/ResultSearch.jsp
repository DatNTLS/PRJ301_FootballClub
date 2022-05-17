<%-- 
    Document   : ResultSearch
    Created on : Mar 6, 2022, 1:24:22 PM
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
            .result-search {
                width: 100%;
                margin: 40px 0;
            }

            .result-search a {
                text-decoration: none;
            }

            .result-search a:hover {
                text-decoration: none;
            }

            .result-search .txt-result {
                width: 100%;
            }

            .result-search .txt-result h5 {
                color: #140a47;
                background-color: #f1f1f1;
                text-align: center;
                margin: 40px 0;
                font-size: 50px;
                font-family: fantasy;
                text-transform: uppercase;
            }

            .result-search .txt-alert{
                width: 100%;
            }

            .result-search .txt-alert h4{
                color: #140a47;
                text-align: center;
                margin: 40px 0;
                font-size: 40px;
            }

            .result-search .txt-alert span{
                color: #0033ff;
            }

            .result-search .total{
                width: 100%;
                margin: 40px 0;
            }

            .result-search .total h5{
                font-size: 30px;
                color: #140a47;
            }

            .result-search .total .sum{
                color: #0033ff;
            }

            .result-search .total .txt{
                color: #0033ff;
            }

            .result-search .result-player {
                width: 100%;
                border: 1px solid #001489;
                margin: 10px 0;
            }

            .result-search .result-player img{
                border-right: 1px solid #001489;
            }

            .result-search .result-player .short-infor {
                width: 100%;
                list-style: none;
                padding-left: 0;

            }

            .result-search .result-player .short-infor li {
                display: inline-block;
                margin: 40px 10px;
            }

            .result-search .result-player .short-infor li:first-child {
                background-color: #0033ff;
                font-size: 50px;
                font-family: fantasy;
                color: #fff;
                padding: 5px 10px;
                width: 80px;
                text-align: center;
                border: 1px solid #140a47;
            }

            .result-search .result-player .short-infor li:nth-child(2) {
                font-size: 40px;
                font-family: fantasy;
                color: #0033ff;
            }

            .result-search .result-player .bottom-result {
                width: 100%;
                margin: 20px 10px;
            }

            .result-search .result-player .view {
                background-color: #0033ff;
                color: #fff;
                font-size: 20px;
                text-transform: uppercase;
                padding: 10px 100px;
                border: 1px solid #140a47;
            }

            .result-search .result-player .view:hover {
                background-color: #fff;
                color: #0033ff;
                border: 1px solid #140a47;
            }

            .result-search .result-coach {
                width: 100%;
                border: 1px solid #001489;
                margin: 10px 0;
            }

            .result-search .result-coach img{
                border-right: 1px solid #001489;
            }

            .result-search .result-coach .name {
                font-size: 40px;
                font-family: fantasy;
                color: #0033ff;
                margin: 50px 10px;
            }

            .result-search .result-coach .bottom-result {
                width: 100%;
                margin: 70px 10px;
            }

            .result-search .result-coach .view {
                background-color: #0033ff;
                color: #fff;
                font-size: 20px;
                text-transform: uppercase;
                padding: 10px 100px;
                border: 1px solid #140a47;
            }

            .result-search .result-coach .view:hover {
                background-color: #fff;
                color: #0033ff;
                border: 1px solid #140a47;
            }

            .result-search .result-news {
                width: 100%;
                border: 1px solid #001489;
                margin: 10px 0;
            }

            .result-search .result-news .left-news {
                width: 100%;
            }

            .result-search .result-news .left-news h6 {
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

            .result-search .result-news .right-news {
                width: 100%;
            }

            .result-search .result-news .right-news h2 {
                font-size: 20px;
                padding: 10px;
                color: #001489;
                margin: 10px 0;
            }

            .result-search .result-news .right-news h3 {
                font-size: 15px;
                padding: 10px;
                color: black;
            }

            .result-search .result-news .right-news p {
                font-size: 18px;
                color: grey;
                padding: 5px 10px;
            }

            .result-search .result-news .right-news .like{
                margin: 10px;
            }

            .result-search .result-news .right-news .like a{
                padding: 5px;
            }
            
            .result-search .result-news .right-news .remove{
                margin: 10px;
            }

            .result-search .result-news .right-news .remove a{
                padding: 5px;
            }
        </style>

        <title>Document</title>
    </head>

    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
            <% boolean check = false;
            %> 
            <div class="result-search">
                <c:if test="${empty listPlayer && empty listCoach && empty listNews}">
                    <div class="txt-alert">
                        <h4>No results found for "<span class="txt">${txt}</span>"</h4>
                    </div>
                </c:if>

                <c:if test="${!empty listPlayer || !empty listCoach || !empty listNews}">
                    <div class="txt-result">
                        <h5>Search Result</h5>
                    </div>
                    <div class="total">
                        <h5>There are "<span class="sum">${total}</span>" result(s) for "<span class="txt">${txt}</span>"</h5>
                    </div>
                    <c:forEach items="${listPlayer}" var="listP">
                        <div class="result-player">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="detailPlayer?playerId=${listP.playerId}"><img src="${listP.img}" alt="" width="100%"
                                                                                           height="300px"></a>
                                </div>
                                <div class="col-md-8">
                                    <ul class="short-infor">
                                        <li class="number">${listP.number}</li>
                                        <li class="name">${listP.playerName}</li>
                                    </ul>
                                    <div class="bottom-result">
                                        <a href="detailPlayer?playerId=${listP.playerId}" class="view">View Profile</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach items="${listCoach}" var="listC">
                        <div class="result-coach">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="detailCoach?coachId=${listC.coachId}"><img src="${listC.img}" alt="" width="100%"
                                                                                        height="300px"></a>
                                </div>
                                <div class="col-md-8">
                                    <h3 class="name">${listC.coachName}</h3>
                                    <div class="bottom-result">
                                        <a href="detailCoach?coachId=${listC.coachId}" class="view">View Profile</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach items="${listNews}" var="listN">
                        <div class="result-news">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="detailNews?newsId=${listN.newsId}">
                                        <div class="left-news">
                                            <c:forEach items="${listTypeNews}" var="listTN">
                                                <c:if test="${listTN.typeId == listN.typeId}">
                                                    <h6>${listTN.typeName}</h6>
                                                </c:if>
                                            </c:forEach>
                                            <img src="${listN.img}" alt="" width="100%" height="250px">
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-8">
                                    <div class="right-news">
                                        <h2>${listN.title}</h2>
                                        <h3>${listN.shortDescription}</h3>
                                        <p>${listN.dateFormat}</p>
                                        <c:forEach items="${listFa}" var="lf">
                                            <c:if test="${lf.newsId == listN.newsId}">
                                                <%
                                                    check = true;
                                                %> 
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${account == null}">
                                            <div class="like"><a href="Login.jsp"><span style="font-size:15px">&#128077;</span></a></div>
                                        </c:if>
                                        <c:if test="${account != null}">
                                            <%
                                            if (check == false) {%>
                                            <div class="like"><a href="like?nid=${listN.newsId}&page=search&text-input=${txt}"><span style="font-size:15px">&#128077;</span></a></div>
                                            <%} else {%>
                                            <div 
                                                class="remove"><a href = "removeFavorite?newsId=${listN.newsId}&page=search&text-input=${txt}"> <span 
                                                        style = "font-size:15px" >🗑️</span > </a> </div>

                                            <%}
                                                check = false;
                                            %>
                                        </c:if>
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
