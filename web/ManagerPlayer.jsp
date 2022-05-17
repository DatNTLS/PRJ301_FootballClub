<%-- 
    Document   : ManagerPlayer
    Created on : Feb 27, 2022, 8:03:38 PM
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
            .manager-player {
                width: 100%;
                margin: 40px 0;
            }

            .manager-player a{
                text-decoration: none;
            }

            .manager-player a:hover{
                text-decoration: none;
            }

            .manager-player .manager-option {
                width: 100%;
                margin: 40px 0;
            }

            .manager-player .manager-option h3{
                text-align: center;
                font-size: 30px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 5px 0;
                margin: 5px 0;
            }
            
            .manager-player .manager-menu ul{
                width: 100%;
                text-align: center;
                list-style: none;
                padding-left: 0;
            }
            
            .manager-player .manager-menu li{
                display: inline-block;
                margin: 10px 20px;
                padding: 10px;
            }
            
            .manager-player .manager-menu .account{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-player .manager-menu .news{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-player .manager-menu .team{
                border: 1px solid #0033ff;
                background: #fff;
                color: #0033ff;
            }

            .manager-player .manager-option .list-option {
                width: 100%;
                list-style: none;
                padding-left: 0;
                text-align: center;
            }

            .manager-player .manager-option .list-option li {
                display: inline-block;
            }
            
            .manager-player .manager-option .list-option .player{
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

            .manager-player .manager-option .list-option .coach{
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
            
            .manager-player .manager-option .list-option li:hover {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .manager-player .manager-option .list-option li:focus {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .manager-player h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }

            .manager-player .top-manager {
                width: 100%;
            }

            .manager-player .top-manager h2 {
                font-size: 30px;
                color: #0033ff;
            }

            .manager-player .top-manager .btn-add {
                background-color: #218838;
                padding: 10px 5px;
                text-align: center;
                border-radius: 2px;
                width: 150px;
                margin: 0 auto;
            }

            .manager-player .top-manager .btn-add i {
                font-size: 20px;
                color: #fff;
            }

            .manager-player .bottom-manager {
                width: 100%;
                margin: 20px 0;
            }

            .manager-player .bottom-manager .table {
                width: 100%;
                border: 1px solid #140a47;
            }

            .manager-player .bottom-manager th {
                border: 1px solid #140a47;
                background-color: #0033ff;
                color: #fff;
                text-align: center;
            }

            .manager-player .bottom-manager td {
                border: 1px solid #140a47;
                text-align: center;
                font-size: 18px;
            }

            .manager-player .list-manager {
                list-style: none;
                padding-left: 0;
                width: 100%;
            }

            .manager-player .list-manager li {
                display: inline-block;
                width: 150px;
                padding: 10px 0;
                margin: 5px 0;
                border-radius: 2px;
            }

            .manager-player .list-manager .btn-update {
                background-color: #0033ff;
                border: 1px solid #140a47;
            }

            .manager-player .list-manager .btn-delete {
                background-color: #d8302f;
                border: 1px solid #140a47;
            }

            .manager-player .list-manager i {
                color: #fff;
                font-size: 20px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="manager-player">
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
                                    <h3>Manager Player</h3>
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
                                <h2>There are ${totalPlayer} Player</h2>
                        </div>
                        <div class="col-md-3">
                            <a href="AddPlayer.jsp">
                                <div class="btn-add">
                                    <i class="fa fa-plus"> &nbspAdd Player</i>
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
                            <th>Date of Birth</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${listPlayer}" var="listP">
                            <tr>
                                <td>${listP.playerId}</td>
                                <td>${listP.playerName}</td>
                                <td><a href="detailPlayer?playerId=${listP.playerId}"><img src="${listP.img}" alt="" width="200px" height="150px"></a></td>
                                <td>${listP.dateFormat}</td>
                                <c:forEach items="${playerRole}" var="pr">
                                    <c:if test="${pr.roleId == listP.roleId}">
                                        <td>${pr.roleName}</td>
                                    </c:if>
                                </c:forEach>
                                <td>
                                    <ul class="list-manager">
                                        <li class="btn-update">
                                            <a href="updatePlayer?id=${listP.playerId}">
                                                <i class="fa fa-edit"> &nbspUpdate Player</i>
                                            </a>
                                        </li>
                                        <li class="btn-delete">
                                            <a href="#" onclick="showMess(${listP.playerId})">
                                                <i class="fa fa-trash"> &nbspDelete Player</i>
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
                window.location.href = 'deletePlayer?id=' + id;
            }
        }
    </script>
</html>
