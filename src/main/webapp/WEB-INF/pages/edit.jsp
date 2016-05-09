<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>User edit</title>
</head>
<body>
<h1>User edit</h1>
<form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/edit/${user.id}.html">
	<table bgcolor="#f0ffff">
		<tbody>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Age:</td>
				<td><form:input path="age"/></td>
			</tr>
			<tr>
				<td>isAdmin:</td>
				<td><form:input path="isAdmin"/></td>
			</tr>
			<tr>
				<td>createdDate:</td>
				<td>createdDate is not edit</td>
			</tr>
			<tr>
				<td><input type="submit" value="Edit" /></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</form:form>
<form><input Type="button" value="Back" onClick="history.go(-1);return true;"></form>
</body>
</html>
