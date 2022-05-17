<%-- 
    Document   : AddPlayer
    Created on : Feb 27, 2022, 9:56:13 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }

            * {
                box-sizing: border-box;
            }

            .form-add {
                width: 70%;
                margin: 0 auto;
            }

            .form-add h3 {
                text-align: center;
                font-size: 40px;
                color: #140a47;
            }

            input[type=text],[type=date],
            select,
            textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #001489;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #001589c0;
            }

            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }
        </style>
    </head>

    <body>

        <div class="form-add">
            <h3>Add Player</h3>

            <div class="container">
                <form action="addPlayer" method="post">
                    <label for="">Name</label>
                    <input type="text" name="playerName" placeholder="Enter name..">

                    <label for="">Img</label>
                    <input type="text" name="img" placeholder="Enter img..">

                    Note: Enter the correct format (yyyy-mm-dd)
                    <label for="">Date of Birth</label>
                    <input type="date" name="dob" placeholder="Enter date of birth..">

                    <label for="">Birth Place</label>
                    <input type="text" name="birthPlace" placeholder="Enter birth place..">

                    <jsp:useBean id="dao" scope="page" class="dao.DAO" />
                    <label for="">Nationality</label>
                    <select name="nationalityId">
                        <c:forEach items="${dao.getAllNationality()}" var="listNA">
                            <option value="${listNA.nationalityId}">${listNA.nationalityName}</option>
                        </c:forEach>
                    </select>

                    <label for="">Height</label>
                    <input type="text" name="height" placeholder="Enter height..">

                    <label for="">Weight</label>
                    <input type="text" name="weight" placeholder="Enter weight..">

                    <label for="">Role</label>
                    <select name="roleId">
                        <c:forEach items="${dao.getAllPlayerRole()}" var="pr">
                            <option value="${pr.roleId}">${pr.roleName}</option>
                        </c:forEach>
                    </select>

                    <label for="">Img Background</label>
                    <input type="text" name="imgBackground" placeholder="Enter img background..">

                    <label for="">Number</label>
                    <input type="text" name="number" placeholder="Enter number..">

                    <label for="">Short Description</label>
                    <textarea name="shortDescription" placeholder="Write something.." style="height:200px"></textarea>

                    <label for="">Information</label>
                    <textarea name="playerInfor" placeholder="Write something.. use accents ; leave the line" style="height:200px"></textarea>

                    <label for="">Detail</label><br>
                    Note: < img src="..." alt="" > When copying the img tag, remove the 2 spaces next to it, Enter the image link in the 3 dots, the paragraph outside the img tag, if you want to insert more use the ;
                    <textarea name="detail" placeholder="Write something.. use accents ; leave the line" style="height:200px"></textarea>

                    <input type="submit" value="Add Player">
                </form>
            </div>
        </div>

    </body>
</html>
