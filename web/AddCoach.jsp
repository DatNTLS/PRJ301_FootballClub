<%-- 
    Document   : AddCoach
    Created on : Feb 27, 2022, 9:56:22 PM
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

            input[type=text],
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
            <h3>Add Coach</h3>

            <div class="container">
                <form action="addCoach" method="post">
                    <label for="">Name</label>
                    <input type="text" name="coachName" placeholder="Enter name..">

                    <label for="">Img</label>
                    <input type="text" name="img" placeholder="Enter img..">

                    <jsp:useBean id="dao" scope="page" class="dao.DAO" />
                    <label for="">Nationality</label>
                    <select name="nationalityId">
                        <c:forEach items="${dao.getAllNationality()}" var="listNA">
                            <option value="${listNA.nationalityId}">${listNA.nationalityName}</option>
                        </c:forEach>
                    </select>

                    <label for="">Role</label>
                    <select name="roleId">
                        <c:forEach items="${dao.getAllCoachRole()}" var="cr">
                            <option value="${cr.roleId}">${cr.roleName}</option>
                        </c:forEach>
                    </select>

                    <label for="">Short Description</label>
                    <textarea name="shortDescription" placeholder="Write something.." style="height:200px"></textarea>

                    <label for="">Information</label>
                    <textarea name="coachInfor" placeholder="Write something.. use accents ; leave the line" style="height:200px"></textarea>
                    
                    <label for="">Detail</label><br>
                    Note: < img src="..." alt="" > When copying the img tag, remove the 2 spaces next to it, Enter the image link in the 3 dots, the paragraph outside the img tag, if you want to insert more use the ;
                    <textarea name="detail" placeholder="Write something.. use accents ; leave the line" style="height:200px"></textarea>

                    <input type="submit" value="Add Coach">
                </form>
            </div>
        </div>

    </body>
</html>
