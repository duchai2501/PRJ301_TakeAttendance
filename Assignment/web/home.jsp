<%-- 
    Document   : home
    Created on : Dec 9, 2022, 1:19:19 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:if test="${sessionScope.account ne null}">
        <h1>Hello ${sessionScope.account.displayname}</h1>
        Click
        <a href="login">here</a> to logout.<br/>
        <a href="#">View timetable</a>(Thời khoá biểu)<br/>
        <a href="#">Take attendance</a>(Điểm danh)<br/>
        
    </c:if>
</body>
</html>
