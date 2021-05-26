<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	<%
	String userName = (String)session.getAttribute("usernName");
	%>
	<div align="center">
		<h2>Product Management System</h2>
		<label>Welcome <%= userName %></label>
	</div>
</body>
</html>