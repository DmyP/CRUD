<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Users list</title>
</head>
<body>
	<h1>Users list</h1>
	<table border="4px" cellpadding="0" cellspacing="0">
		<thead>
			<tr bgcolor="#7fffd4">
				<th width="60">ID</th>
				<th width="180">NAME</th>
				<th width="60">AGE</th>
				<th width="60">ISADMIN</th>
				<th width="180">CREATEDDATE</th>
				<th width="60">EDIT</th>
				<th width="60">DELETE</th>
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
					<td><a href="${pageContext.request.contextPath}/user/edit/${user.id}.html">Edit</a><br/></td>
					<td><a href="${pageContext.request.contextPath}/user/delete/${user.id}.html">Delete</a><br/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form><input Type="button" value="Back" onClick="history.go(-1);return true;"></form>
</body>
</html>