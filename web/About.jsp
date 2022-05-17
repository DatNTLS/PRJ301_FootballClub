<%-- 
    Document   : About
    Created on : Feb 19, 2022, 3:31:29 PM
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
            .about {
                width: 100%;
            }

            .about-club {
                width: 100%;
            }

            .about-club h1 {
                font-size: 40px;
                font-weight: bold;
                text-align: center;
                margin: 40px 0;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .about-club img {
                border-top: 1px solid #140a47;
                border-bottom: 1px solid #140a47;
            }

            .infor-club {
                width: 100%;
            }

            .infor-club h2 {
                font-size: 40px;
                font-weight: bold;
                text-align: center;
                margin: 40px 0;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .infor-club img {
                border: 1px solid grey;
            }

            .infor-club p {
                font-size: 20px;
                color: #140a47;
            }

            .history-club {
                width: 100%;
            }

            .history-club h2 {
                font-size: 40px;
                font-weight: bold;
                text-align: center;
                margin: 40px 0;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .history-club h3 {
                font-size: 30px;
                font-weight: bold;
                color: #140a47;
                margin: 20px 0;
            }

            .history-club p {
                font-size: 20px;
                color: #140a47;
            }

            .stadium-club {
                width: 100%;
            }

            .stadium-club h2 {
                font-size: 40px;
                font-weight: bold;
                text-align: center;
                margin: 40px 0;
                color: #140a47;
                background-color: #f1f1f1;
                padding: 10px 0;
                text-transform: uppercase;
            }

            .stadium-club h3 {
                font-size: 30px;
                font-weight: bold;
                color: #140a47;
                margin: 20px 0;
            }

            .stadium-club p {
                font-size: 20px;
                color: #140a47;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="about">
            <div class="about-club">
                <h1>About the Club</h1>
                <img src="images/flag.png" alt="Wallpaper" width="100%" height="600px">
            </div>
            <div class="container">
                <div class="infor-club">
                    <h2>Chelsea FC</h2>
                    <div class="row">
                        <div class="col-md-4">
                            <img src="images/chelseafc.png" alt="Logo" width="100%" height="300px">
                        </div>
                        <div class="col-md-8">
                            <p> Chelsea Football Club is an English professional football club based in Fulham, West
                                London.
                                Founded in 1905, the club competes in the Premier League, the top division of English
                                football. Chelsea are among England's most successful clubs, having won over thirty
                                competitive honours, including six League titles and nine international trophies. Their home
                                ground is Stamford Bridge.
                                <br> &ensp;Chelsea won their first major honour, the League championship, in 1955. The club
                                won the FA
                                Cup for the first time in 1970 and their first European honour, the Cup Winners' Cup, in
                                1971. After a period of decline in the late 1970s and 1980s, the club enjoyed a revival in
                                the 1990s, enjoying more success in several cup competitions. The past twenty-five years
                                have been the most successful in Chelsea's history: they have won five Premier League
                                titles, seven FA Cups,
                            </p>
                        </div>
                        <p>
                            four League Cups, two UEFA Champions League titles, two UEFA Europa
                            League titles, two UEFA Super Cups, and one FIFA Club World Cup during this period.[5]
                            Chelsea are one of five clubs to have won all three of UEFA's main club competitions, being
                            the first English club to achieve the UEFA treble. They are also the only London club to
                            have won the Champions League and the Club World Cup, and the only club to have won all
                            three major European competitions twice.</p>
                    </div>
                </div>
                <div class="history-club">
                    <h2>History of Club</h2>
                    <img src="images/history.jfif" alt="History" width="100%" height="300px">
                    <h3> With over a century of football played at a prime west London location so fundamental to the
                        birth
                        of Chelsea Football Club in 1905, there is a great story to tell, full of ambition, star players,
                        dramatic quests for trophy success and fashionable style, and at times even a swagger too, and we
                        tell that tale here.</h3>
                    <p> In 1904, Gus Mears acquired the Stamford Bridge athletics stadium with the aim of turning it
                        into a
                        football ground. An offer to lease it to nearby Fulham was turned down, so Mears opted to found his
                        own club to use the stadium. As there was already a team named Fulham in the borough, the name of
                        the adjacent borough of Chelsea was chosen for the new club; names like Kensington FC, Stamford
                        Bridge FC and London FC were also considered.Chelsea were founded on 10 March 1905 at The Rising Sun
                        pub (now The Butcher's Hook), opposite the present-day main entrance to the ground on Fulham
                        Road, and were elected to the Football League shortly afterwards.</p>
                </div>
                <div class="stadium-club">
                    <h2>Stadium of Club</h2>
                    <img src="images/viewstadium.jpg" alt="History" width="100%" height="300px">
                    <h3> The only stadium Chelsea Football Club's men's team have ever called home - the grass,
                        terraces and stands of this corner of London SW6 have a colourful past in their own right, including
                        development projects both realised and abandoned, and a long battle just remain at Stamford Bridge
                        when property developers had other plans. </h3>
                    <p> Chelsea have only had one home ground, Stamford Bridge, where they have played since the
                        team's foundation. The stadium was officially opened on 28 April 1877 and for the next 28 years it
                        was used by the London Athletic Club as an arena for athletics meetings. In 1904 the ground was
                        acquired by businessman Gus Mears and his brother Joseph, who had also purchased nearby land
                        (formerly a large market garden) with the aim of staging football matches on the now 12.5 acre
                        (51,000 m2) site.tamford Bridge was designed for the Mears family by the noted football architect
                        Archibald Leitch, who had also designed Ibrox, Craven Cottage and Hampden Park.Most football clubs
                        were founded first, and then sought grounds in which to play, but Chelsea were founded for Stamford
                        Bridge.</p>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
