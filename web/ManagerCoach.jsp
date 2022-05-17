<%-- 
    Document   : ManagerCoach
    Created on : Feb 27, 2022, 8:03:49 PM
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
            .manager-coach {
                width: 100%;
                margin: 40px 0;
            }

            .manager-coach a{
                text-decoration: none;
            }

            .manager-coach a:hover{
                text-decoration: none;
            }

            .manager-coach .manager-option {
                width: 100%;
                margin: 40px 0;
            }

            .manager-coach .manager-option h3{
                text-align: center;
                font-size: 30px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 5px 0;
                margin: 5px 0;
            }
            
            .manager-coach .manager-menu ul{
                width: 100%;
                text-align: center;
                list-style: none;
                padding-left: 0;
            }
            
            .manager-coach .manager-menu li{
                display: inline-block;
                margin: 10px 20px;
                padding: 10px;
            }
            
            .manager-coach .manager-menu .account{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-coach .manager-menu .news{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-coach .manager-menu .team{
                border: 1px solid #0033ff;
                background: #fff;
                color: #0033ff;
            }

            .manager-coach .manager-option .list-option {
                width: 100%;
                list-style: none;
                padding-left: 0;
                text-align: center;
            }

            .manager-coach .manager-option .list-option li {
                display: inline-block;
            }

            .manager-coach .manager-option .list-option .player{
                background-color: #0033ff;
                width: 200px;
                height: 45px;
                text-align: center;
                font-size: 20px;
                color: #fff;
                border: 1px solid #140a47;
                margin: 5px 10px;
                padding: 5px 0;
            }

            .manager-coach .manager-option .list-option .coach{
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
                width: 200px;
                height: 45px;
                text-align: center;
                font-size: 20px;
                margin: 5px 10px;
                padding: 5px 0;
            }

            .manager-coach .manager-option .list-option li:hover {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .manager-coach .manager-option .list-option li:focus {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .manager-coach h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }

            .manager-coach .top-manager {
                width: 100%;
            }

            .manager-coach .top-manager h2 {
                font-size: 30px;
                color: #0033ff;
            }

            .manager-coach .top-manager .btn-add {
                background-color: #218838;
                padding: 10px 5px;
                text-align: center;
                border-radius: 2px;
                width: 150px;
                margin: 0 auto;
            }

            .manager-coach .top-manager .btn-add i {
                font-size: 20px;
                color: #fff;
            }

            .manager-coach .bottom-manager {
                width: 100%;
                margin: 20px 0;
            }

            .manager-coach .bottom-manager .table {
                width: 100%;
                border: 1px solid #140a47;
            }

            .manager-coach .bottom-manager th {
                border: 1px solid #140a47;
                background-color: #0033ff;
                color: #fff;
                text-align: center;
            }

            .manager-coach .bottom-manager td {
                border: 1px solid #140a47;
                text-align: center;
                font-size: 18px;
            }

            .manager-coach .list-manager {
                list-style: none;
                padding-left: 0;
                width: 100%;
            }

            .manager-coach .list-manager li {
                display: inline-block;
                width: 150px;
                padding: 10px 0;
                margin: 5px 0;
                border-radius: 2px;
            }

            .manager-coach .list-manager .btn-update {
                background-color: #0033ff;
                border: 1px solid #140a47;
            }

            .manager-coach .list-manager .btn-delete {
                background-color: #d8302f;
                border: 1px solid #140a47;
            }

            .manager-coach .list-manager i {
                color: #fff;
                font-size: 20px;
            }

        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="manager-coach">
                    <div class="manager-menu">
                        <ul>
                        <c:if test="${account.isAdmin}">
                            <a href="managerAccount"><li class="account"><span>🙍‍♂️</span> Manager Account </li></a>
                            <a href="managerNews"><li class="news"><span>📰</span> Manager News </li></a>
                            <a href="managerPlayer"><li class="team"><span>⚽</span> Manager Team </li></a>
                            </c:if>
                    </ul>
                </div>
                <h1>Manager Team</h1>
                <div class="top-manager">
                    <div class="manager-option">
                        <div class="row">
                            <div class="col-md-6">
                                <h3>Manager Coach</h3>
                            </div>
                            <div class="col-md-6">
                                <ul class="list-option">
                                    <a href="managerPlayer">
                                        <li class="player">Manager Player</li>
                                    </a>
                                    <a href="managerCoach">
                                        <li class="coach">Manager Coach</li>
                                    </a>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            <h2>There are ${totalCoach} Coach</h2>
                        </div>
                        <div class="col-md-3">
                            <a href="AddCoach.jsp">
                                <div class="btn-add">
                                    <i class="fa fa-plus"> &nbspAdd Coach</i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="bottom-manager">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Img</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${listCoach}" var="listC">
                            <tr>
                                <td>${listC.coachId}</td>
                                <td>${listC.coachName}</td>
                                <td><a href="detailCoach?coachId=${listC.coachId}"><img src="${listC.img}" alt="" width="200px" height="150px"></a></td>
                                    <c:forEach items="${coachRole}" var="cr">
                                        <c:if test="${cr.roleId == listC.roleId}">
                                        <td>${cr.roleName}</td>
                                    </c:if>
                                </c:forEach>
                                <td>
                                    <ul class="list-manager">
                                        <li class="btn-update">
                                            <a href="updateCoach?id=${listC.coachId}">
                                                <i class="fa fa-edit"> &nbspUpdate Coach</i>
                                            </a>
                                        </li>
                                        <li class="btn-delete">
                                            <a href="#" onclick="showMess(${listC.coachId})">
                                                <i class="fa fa-trash"> &nbspDelete Coach</i>
                                            </a>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
    <script>
        function showMess(id) {
            var check = confirm('Are you sure to delete');
            if (check === true) {
                window.location.href = 'deleteCoach?id=' + id;
            }
        }
    </script>
</html>
