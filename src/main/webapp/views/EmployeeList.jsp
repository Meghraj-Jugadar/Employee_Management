<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
<style type="text/css">
body {
	background-image: url("img/img2.png");
	background-size: cover;
}
</style>
</head>
<body>

	<header>
		<!-- Your header content -->
		<div class="navbar">
			<a href="/UserHome">Home</a> <a href="/register">Register</a> <a
				href="/emplist">Details</a> <a href="/about">About</a><a
				href="/logout">Logout</a>
		</div>
	</header>
	<center>
		<h4 style="color: red">${dlt_msg}</h4>
		<h4 style="color: green">${emp_update}</h4>
	</center>
	<table>
		<tr>
			<th>Name</th>
			<th>Phone</th>
			<th>City</th>
			<th>Email</th>
			<th>Action</th>
		</tr>
		<c:forEach var="e" items="${employees}">
			<tr>
				<td>${e.emp_name}</td>
				<td>${e.emp_phone}</td>
				<td>${e.emp_city}</td>
				<td>${e.emp_email}</td>
				<td><a href="delete?id=${e.emp_id}" class="buttonD"
					style="background-color: red;">Delete</a> <a
					href="update?id=${e.emp_id}" class="buttonU"
					style="background-color: green;">Update</a></td>
			</tr>
		</c:forEach>
		 
	</table>

</body>
</html>