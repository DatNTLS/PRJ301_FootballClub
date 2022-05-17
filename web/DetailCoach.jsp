<%-- 
    Document   : DetailCoach
    Created on : Feb 19, 2022, 3:39:17 PM
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
            .detail-coach *{
                font-size: 20px;
            }

            .detail-coach {
                width: 100%;
                margin: 40px 0;
            }

            .detail-coach h1 {
                text-align: center;
                margin: 40px 0;
                font-weight: bold;
                color: #140a47;
                font-size: 40px;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .detail-coach .background {
                width: 100%;
            }

            .detail-coach .background img {
                border: 1px solid #140a47;
            }

            .detail-coach .top-infor-coach {
                width: 100%;
                margin: 20px 0;
            }

            .detail-coach .picture-coach img {
                border: 1px solid grey;
            }

            .detail-coach .frame-infor-coach {
                width: 100%;
                border: 1px solid #140a47;
            }

            .detail-coach .inside-frame {
                width: 90%;
                margin: 20px auto;
            }

            .detail-coach .inside-frame h2 {
                background-color: #0033ff;
                text-align: center;
                width: 70px;
                height: 50px;
                font-size: 40px;
                color: #fff;
                position: absolute;
                top: 20px;
                display: none;
            }

            .detail-coach .inside-frame h4 {
                color: #0033ff;
                font-weight: bold;
                font-size: 40px;
            }

            .detail-coach .inside-frame h5 {
                color: #140a47;
                font-size: 20px;
                padding: 20px 0;
                border-bottom: 4px solid #140a47;
            }

            .detail-coach .inside-frame table {
                width: 100%;
            }

            .detail-coach .inside-frame td {
                padding: 10px 0;
                border-bottom: 4px solid #f1f1f1;
                font-size: 20px;
            }

            .detail-coach .inside-frame .data {
                position: absolute;
                right: 7%;
            }

            .detail-coach .bottom-infor-coach {
                width: 100%;
            }

            .detail-coach .bottom-infor-coach h2 {
                font-size: 40px;
                font-weight: bold;
                color: #140a47;
                text-align: center;
                margin: 40px 0;
                background-color: #f1f1f1;
                padding: 10px 0;
            }

            .detail-coach .bottom-infor-coach h3 {
                color: #0033ff;
                font-weight: bold;
                font-size: 30px;
                padding: 10px 0;
            }

            .detail-coach .bottom-infor-coach p {
                font-size: 20px;
                color: #140a47;
            }

            .detail-coach .detail-content img{
                width: 100%;
                height: auto;
                margin: 20px 0;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="detail-coach">

                <h1>Detail about ${coach.coachName}</h1>
            <div class="background">
                <img src="images/player-profile-hero-bg.jfif"
                     alt="Background" width="100%" height="500px">
            </div>
            <div class="container">
                <div class="top-infor-coach">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="picture-coach">
                                <img src="${coach.img}"
                                     alt="Picture" width="100%" height="300px">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="frame-infor-coach">
                                <div class="inside-frame">
                                    <div class="top-part">
                                        <h2>${coach.coachId}</h2>
                                        <br><br><br>
                                        <h4>${coach.coachName}</h4>
                                        <h5>Personal Information</h5>
                                    </div>
                                    <div class="bottom-part">
                                        <table>
                                            <tr>
                                                <td class="attribute">Coach Name</td>
                                                <td class="data">${coach.coachName}</td>
                                            </tr>
                                            <tr>
                                                <td class="attribute">Role</td>
                                                <c:forEach items="${coachRole}" var="cr">
                                                    <c:if test="${cr.roleId == coach.roleId}">
                                                        <td class="data">${cr.roleName}</td>
                                                    </c:if>
                                                </c:forEach>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bottom-infor-coach">
                    <h2>Biography</h2>
                    <h3>${coach.shortDescription}</h3>
                    <c:forEach items="${infor}" var="infor">
                        <p>${infor}</p>
                    </c:forEach>
                    <div class="detail-content">
                        <c:forEach items="${detail}" var="det">
                            <p>${det}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
