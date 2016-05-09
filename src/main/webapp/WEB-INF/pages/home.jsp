<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home page</title>
</head>
<body>
    <h1>Home page</h1>
    <h4>This is my first CRUD application using:</h4>
    <p>Maven, Spring, MySQL, Hibernate, Spring, Spring MVC</p>
    <p>Please, select operation you want to apply:</p>
    <p><a href="${pageContext.request.contextPath}/user/list.html">Users list</a><br/></p>
    <p><a href="${pageContext.request.contextPath}/user/search.html">Search user</a><br/></p>
    <p><a href="${pageContext.request.contextPath}/user/add.html">Add new user</a><br/></p>
</body>
</html>