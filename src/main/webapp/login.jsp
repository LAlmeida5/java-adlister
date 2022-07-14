<%--
  Created by IntelliJ IDEA.
  User: devchino
  Date: 7/14/22
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="partials/head.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" id="username" name="username">
    <label for="password">Password</label>
    <input type="text" id="password" name="password">
    <button type="submit">Submit</button>
</form>
<c:if test='${(param.username != null) && (param.password != null)}'>
    <c:choose>
        <c:when test='${(param.username.equalsIgnoreCase("admin")) && (param.password.equalsIgnoreCase("password"))}'>
            <%response.sendRedirect("profile.jsp");%>
        </c:when>

        <c:otherwise>
            <%response.sendRedirect("login.jsp");%>
        </c:otherwise>
    </c:choose>
</c:if>
</body>
</html>
