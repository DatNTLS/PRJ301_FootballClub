<%-- 
    Document   : News
    Created on : Feb 19, 2022, 3:38:42 PM
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
            .news {
                width: 100%;
            }

            .news a {
                text-decoration: none;
            }

            .news a:hover {
                text-decoration: none;
            }

            .news h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }

            .news .frame-news {
                width: 100%;
                border: 1px solid #001489;
                margin: 20px 0;
            }

            .news .frame-news .img {
                width: 100%;
            }

            .news h5 {
                color: #140a47;
                background-color: #f1f1f1;
                text-align: center;
                margin: 40px 0;
                font-size: 40px;
                font-family: fantasy;
            }

            .news .frame-news h6 {
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

            .news .frame-news img {
                border: 1px solid grey;
            }

            .news .short-description {
                width: 100%;
            }

            .news .short-description h2 {
                font-size: 20px;
                padding: 10px;
                color: #001489;
            }

            .news .short-description h3 {
                font-size: 15px;
                padding: 10px;
                color: black;
            }

            .news .short-description p {
                font-size: 18px;
                color: grey;
                padding: 5px 10px;
            }

            .news .short-description .like{
                margin: 10px;
            }

            .news .short-description .like a{
                padding: 5px;
            }

            .news .paging{
                width: 100%;
                text-align: center;
                margin: 40px 0;
            }

            .news .index-page{
                color: #fff;
                background-color: #0033ff;
                padding: 5px;
                text-align: center;
            }

            .news .active{
                color: #0033ff;
                background-color: #fff;
                padding: 5px;
                text-align: center;
                border: 1px solid #0033ff;
            }

            .news .paging-pre{
                border: 1px solid #0033ff;
                padding: 5px;
                color: #140a47;
                border-radius: 2px;
            }

            .news .paging-next{
                border: 1px solid #0033ff;
                padding: 5px 20px;
                color: #140a47;
                border-radius: 2px;
            }

            .news .remove{
                margin: 10px;
            }

            .news .remove a{
                padding: 5px;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="news">
            <% boolean check = false;
            %> 
            <div class="container">
                <h1>News</h1>
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
                                        <div class="like"><a href="like?nid=${listN.newsId}&page=loadNews"><span style="font-size:15px">&#128077;</span></a></div>
                                        <%} else {%>
                                        <div 
                                            class="remove"><a href = "removeFavorite?newsId=${listN.newsId}&page=loadNews" > <span 
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
                <div class="paging">
                    <c:if test="${tag > 1}">
                        <a href="loadNews?index=${tag-1}" class="paging-pre">Previous</a>
                    </c:if>
                    <c:forEach begin="1" end="${endP}" var="i">
                        <a href="loadNews?index=${i}" class="${tag == i?"active":"index-page"}">${i}</a>
                    </c:forEach>
                    <c:if test="${tag < endP}">
                        <a href="loadNews?index=${tag+1}" class="paging-next">Next</a>
                    </c:if>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
