<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Search users</title>
</head>
<body>
    <h1>Search users</h1>
    <form action="search" method="post">
        <h4>Enter user name you want to search</h4>
        <input name="searchName" type="text">
        <input value="Search" type="submit" size="1">
    </form>
    <c:if test="${empty users}">
        <h4>No users found</h4>
    </c:if>

    <c:if test="${!empty users}">
        <table border="4px" cellpadding="0" cellspacing="0">
            <thead>
                <tr bgcolor="#7fffd4">
                    <th width="60">id</th>
                    <th width="150">name</th>
                    <th width="60">age</th>
                    <th width="60">isAdmin</th>
                    <th width="150">createdDate</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr bgcolor="#f0ffff" align="center">
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.age}</td>
                        <td>${user.isAdmin}</td>
                        <td>${user.createdDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <form><input Type="button" value="Back" onClick="history.go(-1);return true;"></form>
</body>
</html>