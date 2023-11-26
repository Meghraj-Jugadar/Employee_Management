<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
<style>
body {
	text-align: center;
}

.form-group {
	margin-top: 20px;
}
</style>
</head>
<body>

	<c:choose>
        <c:when test="${not empty user}">
            <h1 style="color: Green">${user.emp_name} Registered Successfully...</h1>
        </c:when>
        <c:otherwise>
            <p>No registration information found.</p>
        </c:otherwise>
    </c:choose>


	<div class="form-group">
		<a href="/" class="button">Home</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="/register" class="button">Register</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
			href="/login" class="button">Log In</a>
	</div>

</body>
</html>
