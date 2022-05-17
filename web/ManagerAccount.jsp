<%-- 
    Document   : ManagerAccount
    Created on : Feb 28, 2022, 2:36:04 PM
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
            .manager-account {
                width: 100%;
                margin: 40px 0;
            }

            .manager-account a{
                text-decoration: none;
            }

            .manager-account a:hover{
                text-decoration: none;
            }

            .manager-account h1 {
                text-align: center;
                font-size: 40px;
                font-weight: bold;
                text-transform: uppercase;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                margin: 40px 0;
            }

            .manager-account .manager-menu ul{
                width: 100%;
                text-align: center;
                list-style: none;
                padding-left: 0;
            }
            
            .manager-account .manager-menu li{
                display: inline-block;
                margin: 10px 20px;
                padding: 10px;
            }
            
            .manager-account .manager-menu .account{
                border: 1px solid #0033ff;
                background: #fff;
                color: #0033ff;
            }
            
            .manager-account .manager-menu .news{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-account .manager-menu .team{
                border: 1px solid #140a47;
                background: #0033ff;
                color: #fff;
            }
            
            .manager-account .top-manager {
                width: 100%;
            }

            .manager-account .top-manager h2 {
                font-size: 30px;
                color: #0033ff;
            }

            .manager-account .top-manager .btn-add {
                background-color: #218838;
                padding: 10px 5px;
                text-align: center;
                border-radius: 2px;
                width: 150px;
                margin: 0 auto;
            }

            .manager-account .top-manager .btn-add i {
                font-size: 20px;
                color: #fff;
            }

            .manager-account .bottom-manager {
                width: 100%;
                margin: 20px 0;
            }

            .manager-account .bottom-manager .table {
                width: 100%;
                border: 1px solid #140a47;
            }

            .manager-account .bottom-manager th {
                border: 1px solid #140a47;
                background-color: #0033ff;
                color: #fff;
                text-align: center;
            }

            .manager-account .bottom-manager td {
                border: 1px solid #140a47;
                text-align: center;
                font-size: 20px;
            }

            .manager-account .list-manager {
                list-style: none;
                padding-left: 0;
                width: 100%;
            }

            .manager-account .list-manager li {
                display: inline-block;
                width: 200px;
                padding: 10px 0;
                margin: 5px 10px;
                border-radius: 2px;
            }

            .manager-account .list-manager .btn-delete {
                background-color: #d8302f;
                border: 1px solid #140a47;
            }

            .manager-account .list-manager i {
                color: #fff;
                font-size: 20px;
            }

        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>


            <div class="container">

                <div class="manager-account">
                    <div class="manager-menu">
                        <ul>
                        <c:if test="${account.isAdmin}">
                            <a href="managerAccount"><li class="account"><span>🙍‍♂️</span> Manager Account </li></a>
                            <a href="managerNews"><li class="news"><span>📰</span> Manager News </li></a>
                            <a href="managerPlayer"><li class="team"><span>⚽</span> Manager Team </li></a>
                            </c:if>
                    </ul>
                </div>
                <h1>Manager Account</h1>
                <div class="top-manager">
                    <div class="row">
                        <div class="col-md-9">
                            <h2>There are ${totalAccount} Account</h2>
                        </div>
                        <div class="col-md-3">
                        </div>
                    </div>
                </div>
                <div class="bottom-manager">
                    <table class="table">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Admin</th>
                            <th>SetRole</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${listAccount}" var="listA">
                            <tr>
                                <td>${listA.userId}</td>
                                <td>${listA.userName}</td>
                                <td>${listA.email}</td>
                                <td>${listA.password}</td>
                                <td>${listA.isAdmin?"Yes":"No"}</td>
                                <td>
                                    <c:if test="${!listA.isAdmin}">
                                        <button type="button" onclick="location.href = 'setRole?id=${listA.userId}&isAdmin=true'" class="btn btn-primary">Grant permission</button>
                                    </c:if>
                                    <c:if test="${listA.isAdmin}">
                                        <button type="button" onclick="location.href = 'setRole?id=${listA.userId}&isAdmin=false'" class="btn btn-secondary">Remove permissions</button>
                                    </c:if>
                                </td>
                                <td><ul class="list-manager">
                                        <li class="btn-delete">
                                            <a href="#" onclick="showMess(${listA.userId})"> 
                                                <i class="fa fa-trash"> &nbspDelete Account</i>
                                            </a>
                                        </li>
                                    </ul></td>
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
                window.location.href = 'deleteAccount?id=' + id;
            }
        }
    </script>
</html>
