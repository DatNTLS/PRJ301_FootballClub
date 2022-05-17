<%-- 
    Document   : TeamPlayer
    Created on : Feb 19, 2022, 12:09:46 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .team {
                width: 100%;
                margin: 40px 0;
            }

            .team ul {
                list-style: none;
                padding-left: 0;
            }

            .team a {
                text-decoration: none;
            }

            .team a:hover {
                text-decoration: none;
            }

            .top-team {
                width: 100%;
            }

            .top-team .name-team {
                width: 100%;
            }

            .top-team .name-team h1 {
                font-size: 40px;
                color: #140a47;
                font-family: fantasy;
                text-align: center;
                text-transform: uppercase;
                margin: 18px 0;
            }

            .top-team .list-role-1 {
                width: 100%;
                text-align: center;
            }

            .top-team .list-role-1 li {
                display: inline-block;
            }

            .top-team .list-role-1 .player{
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
                width: 200px;
                height: 40px;
                text-align: center;
                font-size: 20px;
                margin: 20px 10px;
                padding: 4px 0;
            }

            .top-team .list-role-1 .coach{
                background-color: #0033ff;
                color: #fff;
                border: 1px solid #140a47;
                width: 200px;
                height: 40px;
                text-align: center;
                font-size: 20px;
                margin: 20px 10px;
                padding: 4px 0;
            }

            .top-team .list-role-1 li:hover {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .top-team .list-role-1 li:focus {
                background-color: #fff;
                border: 1px solid #0033ff;
                color: #0033ff;
            }

            .bottom-team {
                width: 100%;
            }

            .bottom-team h2 {
                width: 100%;
                padding: 10px 0;
                text-align: center;
                color: #140a47;
                font-weight: bold;
                font-size: 40px;
                background-color: #f1f1f1;
                margin: 40px 0;
            }

            .bottom-team-player {
                width: 100%;
            }

            .bottom-team-player h2 {
                width: 100%;
                padding: 10px 0;
                text-align: center;
                color: #140a47;
                font-weight: bold;
                font-size: 40px;
                background-color: #f1f1f1;
                margin: 40px 0;
            }

            .bottom-team-player .frame-player {
                width: 100%;
            }

            .bottom-team-player .short-infor-player {
                width: 100%;
            }

            .bottom-team-player .top-infor-player {
                width: 100%;
            }

            .bottom-team-player .top-infor-player h4 {
                color: #fff;
                background-color: #0033ff;
                width: 70px;
                height: 50px;
                text-align: center;
                font-size: 30px;
                padding: 4px;
                position: absolute;
                top: 68%;
            }

            .bottom-team-player .bottom-infor-player{
                width: 100%;
            }

            .bottom-team-player .bottom-infor-player h5{
                font-size: 20px;
                font-weight: bold;
                color: #140a47;
                text-align: center;
                padding: 5px 0;
            }

            .bottom-team-player .bottom-infor-player img{
                display: block;
                margin: 3px auto;
            }

            .bottom-team-coach{
                width: 100%;
            }

            .bottom-team-coach h2 {
                width: 100%;
                padding: 10px 0;
                text-align: center;
                color: #140a47;
                font-weight: bold;
                font-size: 40px;
                background-color: #f1f1f1;
                margin: 40px 0;
            }

            .bottom-team-coach .frame-coach{
                width: 100%;
            }

            .bottom-team .short-infor-coach {
                width: 100%;
            }

            .bottom-team-coach .top-infor-coach {
                width: 100%;
            }

            .bottom-team-coach .top-infor-coach h3 {
                color: #fff;
                background-color: #0033ff;
                width: 30px;
                height: 30px;
                text-align: center;
                font-size: 20px;
                padding: 2px;
                position: absolute;
            }

            .bottom-team-coach .bottom-infor-coach{
                width: 100%;
            }

            .bottom-team-coach .bottom-infor-coach h5{
                font-size: 20px;
                font-weight: bold;
                color: #140a47;
                text-align: center;
                padding: 5px 0;
            }

            .bottom-team-coach .bottom-infor-coach img{
                display: block;
                margin: 3px auto;
            }

        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="team">
                <div class="container">
                    <div class="top-team">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="name-team">
                                    <h1>Chelsea FC</h1>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <ul class="list-role-1">
                                    <a href="loadPlayer">
                                        <li class="player">Players</li>
                                    </a>
                                    <a href="loadCoach">
                                        <li class="coach">Coachs</li>
                                    </a>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-team-player">
                        <h2 onclick="showHide1()">Goalkeeper</h2>
                        <div class="frame-player" id="frame-player-1">
                            <div class="row">
                            <c:forEach items="${listGoalkeeper}" var="g">
                                <div class="col-md-3">
                                    <a href="detailPlayer?playerId=${g.playerId}">
                                        <div class="short-infor-player">
                                            <div class="top-infor-player">
                                                <h4>${g.number}</h4>
                                                <img src="${g.img}" alt="Player" width="100%"
                                                     height="300px">
                                            </div>
                                            <div class="bottom-infor-player">
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <h5>${g.playerName}</h5>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <c:forEach items="${listNationality}" var="listNA">
                                                            <c:if test="${listNA.nationalityId == g.nationalityId}">
                                                                <img src="${listNA.img}" alt="Country" width="50px" height="30px">
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <h2 onclick="showHide2()">Defenders</h2>
                    <div class="frame-player" id="frame-player-2">
                        <div class="row">
                            <c:forEach items="${listDefender}" var="d">
                                <div class="col-md-3">
                                    <a href="detailPlayer?playerId=${d.playerId}">
                                        <div class="short-infor-player">
                                            <div class="top-infor-player">
                                                <h4>${d.number}</h4>
                                                <img src="${d.img}" alt="Player" width="100%"
                                                     height="300px">
                                            </div>
                                            <div class="bottom-infor-player">
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <h5>${d.playerName}</h5>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <c:forEach items="${listNationality}" var="listNA">
                                                            <c:if test="${listNA.nationalityId == d.nationalityId}">
                                                                <img src="${listNA.img}" alt="Country" width="50px" height="30px">
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <h2 onclick="showHide3()">Midfielders</h2>
                    <div class="frame-player" id="frame-player-3">
                        <div class="row">
                            <c:forEach items="${listMidfielder}" var="m">
                                <div class="col-md-3">
                                    <a href="detailPlayer?playerId=${m.playerId}">
                                        <div class="short-infor-player">
                                            <div class="top-infor-player">
                                                <h4>${m.number}</h4>
                                                <img src="${m.img}" alt="Player" width="100%"
                                                     height="300px">
                                            </div>
                                            <div class="bottom-infor-player">
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <h5>${m.playerName}</h5>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <c:forEach items="${listNationality}" var="listNA">
                                                            <c:if test="${listNA.nationalityId == m.nationalityId}">
                                                                <img src="${listNA.img}" alt="Country" width="50px" height="30px">
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <h2 onclick="showHide4()">Forwards</h2>
                    <div class="frame-player" id="frame-player-4">
                        <div class="row">
                            <c:forEach items="${listForward}" var="f">
                                <div class="col-md-3">
                                    <a href="detailPlayer?playerId=${f.playerId}">
                                        <div class="short-infor-player">
                                            <div class="top-infor-player">
                                                <h4>${f.number}</h4>
                                                <img src="${f.img}" alt="Player" width="100%"
                                                     height="300px">
                                            </div>
                                            <div class="bottom-infor-player">
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <h5>${f.playerName}</h5>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <c:forEach items="${listNationality}" var="listNA">
                                                            <c:if test="${listNA.nationalityId == f.nationalityId}">
                                                                <img src="${listNA.img}" alt="Country" width="50px" height="30px">
                                                            </c:if>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
    <script>
        function showHide1() {
            if (document.getElementById('frame-player-1').style.display == "none") {
                document.getElementById('frame-player-1').style.display = "block";
            } else {
                document.getElementById('frame-player-1').style.display = "none";
            }
        }
        
        function showHide2() {
            if (document.getElementById('frame-player-2').style.display == "none") {
                document.getElementById('frame-player-2').style.display = "block";
            } else {
                document.getElementById('frame-player-2').style.display = "none";
            }
        }
        
        function showHide3() {
            if (document.getElementById('frame-player-3').style.display == "none") {
                document.getElementById('frame-player-3').style.display = "block";
            } else {
                document.getElementById('frame-player-3').style.display = "none";
            }
        }
        
        function showHide4() {
            if (document.getElementById('frame-player-4').style.display == "none") {
                document.getElementById('frame-player-4').style.display = "block";
            } else {
                document.getElementById('frame-player-4').style.display = "none";
            }
        }
    </script>
</html>
