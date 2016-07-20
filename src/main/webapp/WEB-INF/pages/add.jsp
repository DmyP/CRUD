<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>User add</title>
</head>
<body>
	<h1>User add</h1>
	<form:form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/add.html">
		<table bgcolor="#f0ffff">
			<tbody>
				<tr >
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td>isAdmin:</td>
					<td><form:input path="isAdmin" /></td>
				</tr>
				<tr>
					<td>createdDate: </td>
					<td><%= dateFormat() %></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add user" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

<form>
	<input Type="button" value="Back" onClick="history.go(-1);return true;">
	<input Type="button" value="Home" onClick="window.location='/';">
</form>
</body>
</html>

<%!
	String dateFormat(){
		SimpleDateFormat sdf = new SimpleDateFormat ("dd.MM.yyyy");
		return sdf.format (new Date ());
	}
%>