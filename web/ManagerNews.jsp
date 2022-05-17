<%-- 
    Document   : ManagerNews
    Created on : Feb 26, 2022, 7:56:54 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            .manager-news {
                width: 100%;
                margin: 40px 0;
            }

            .manager-news a{
                text-decoration: none;
            }

            .manager-news a:hover{
                text-decoration: none;
            }

            .manager-news h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }
            
            .manager-news .manager-menu ul{
                width: 100%;
                text-align: center;
                list-style: none;
                padding-left: 0;
            }
            
            .manager-news .manager-menu li{
                display: inline-block;
                margin: 10px 20px;
                padding: 10px;
            }
            
            .manager-news .manager-menu .account{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
                
            }
            
            .manager-news .manager-menu .news{
                border: 1px solid #0033ff;
                background: #fff;
                color: #0033ff;
            }
            
            .manager-news .manager-menu .team{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }

            .manager-news .top-manager {
                width: 100%;
            }

            .manager-news .top-manager h2 {
                font-size: 30px;
                color: #0033ff;
            }

            .manager-news .top-manager .btn-add {
                background-color: #218838;
                padding: 10px 5px;
                text-align: center;
                border-radius: 2px;
                width: 150px;
                margin: 0 auto;
            }

            .manager-news .top-manager .btn-add i {
                font-size: 20px;
                color: #fff;
            }

            .manager-news .bottom-manager {
                width: 100%;
                margin: 20px 0;
            }

            .manager-news .bottom-manager .table {
                width: 100%;
                border: 1px solid #140a47;
            }

            .manager-news .bottom-manager th {
                border: 1px solid #140a47;
                background-color: #0033ff;
                color: #fff;
                text-align: center;
            }

            .manager-news .bottom-manager td {
                border: 1px solid #140a47;
                text-align: center;
                font-size: 18px;
            }

            .manager-news .list-manager {
                list-style: none;
                padding-left: 0;
                width: 100%;
            }

            .manager-news .list-manager li {
                display: inline-block;
                width: 150px;
                padding: 10px 0;
                margin: 5px 0;
                border-radius: 2px;
            }

            .manager-news .list-manager .btn-update {
                background-color: #0033ff;
                border: 1px solid #140a47;
            }

            .manager-news .list-manager .btn-delete {
                background-color: #d8302f;
                border: 1px solid #140a47;
            }

            .manager-news .list-manager i {
                color: #fff;
                font-size: 20px;
            }

            .manager-news .paging{
                width: 100%;
                text-align: center;
                margin: 40px 0;
            }

            .manager-news .index-page{
                color: #fff;
                background-color: #0033ff;
                padding: 5px;
                text-align: center;
            }

            .manager-news .active{
                color: #0033ff;
                background-color: #fff;
                padding: 5px;
                text-align: center;
                border: 1px solid #0033ff;
            }

            .manager-news .paging-pre{
                border: 1px solid #0033ff;
                padding: 5px;
                color: #140a47;
                border-radius: 2px;
            }

            .manager-news .paging-next{
                border: 1px solid #0033ff;
                padding: 5px 20px;
                color: #140a47;
                border-radius: 2px;
            }


        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="manager-news">
                    <div class="manager-menu">
                        <ul>
                        <c:if test="${account.isAdmin}">
                            <a href="managerAccount"><li class="account"><span>🙍‍♂️</span> Manager Account </li></a>
                            <a href="managerNews"><li class="news"><span>📰</span> Manager News </li></a>
                            <a href="managerPlayer"><li class="team"><span>⚽</span> Manager Team </li></a>
                            </c:if>
                    </ul>
                </div>
                <h1>Manager News</h1>
                <div class="top-manager">
                    <div class="row">
                        <div class="col-md-9">
                            <h2>There are ${totalNews} News</h2>
                        </div>
                        <div class="col-md-3">
                            <a href="AddNews.jsp">
                                <div class="btn-add">
                                    <i class="fa fa-plus"> &nbspAdd News</i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="bottom-manager">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Img</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${listNews}" var="listN">
                            <tr>
                                <td>${listN.newsId}</td>
                                <td>${listN.title}</td>
                                <td><a href="detailNews?newsId=${listN.newsId}"><img src="${listN.img}" alt="" width="200px" height="100px"><a></td>
                                <td>${listN.dateFormat}</td>
                                <td>
                                    <ul class="list-manager">
                                        <li class="btn-update">
                                            <a href="updateNews?id=${listN.newsId}">
                                                <i class="fa fa-edit"> &nbspUpdate News</i>
                                            </a>
                                        </li>
                                        <li class="btn-delete">
                                            <a href="#" onclick="showMess(${listN.newsId})"> 
                                                <i class="fa fa-trash"> &nbspDelete News</i>
                                            </a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                    <div class="paging">
                        <c:if test="${tag > 1}">
                            <a href="managerNews?index=${tag-1}" class="paging-pre">Previous</a>
                        </c:if>
                        <c:forEach begin="1" end="${endP}" var="i">
                            <a href="managerNews?index=${i}" class="${tag == i?"active":"index-page"}">${i}</a>
                        </c:forEach>
                        <c:if test="${tag < endP}">
                            <a href="managerNews?index=${tag+1}" class="paging-next">Next</a>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
    <script>
        function showMess(id) {
            var check = confirm('Are you sure to delete');
            if (check === true) {
                window.location.href = 'deleteNews?id=' + id;
            }
        }
    </script>
</html>
