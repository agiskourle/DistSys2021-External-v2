<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login INTERNET</title>
</head>
<style>
input[type=button], input[type=submit] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

.button {
	background-color: red;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

body {
	text-align: center;
	padding: 40px 0;
	background-image:
		url(https://4kwallpaper.wiki/wp-content/uploads/2019/07/108049.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

i {
	color: #9ABC66;
	font-size: 100px;
	line-height: 200px;
	margin-left: -15px;
}

.card {
	background: white;
	padding: 100px;
	border-radius: 50px;
	box-shadow: 0 3px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>
	<div id="header">
		<%@ include file="Header.jspf"%>
	</div>

	<h1>Login</h1>
	<form:form action="${pageContext.request.contextPath}/doLogin"
		method="post">

		<label for="username"><b>User Name : </b></label>
		<input type="text" placeholder="Enter Username" name="username"
			required>
		<label for="password"><b>Password : </b></label>
		<input type="password" placeholder="Enter Password" name="password"
			required>
		<hr
			style="width: 35%; height: 5px; border-width: 0; color: gray; background-color: brown">
		<button class="button" type="submit">Login</button>
	</form:form>

	<c:if test="${param.error != null}">
		<h4>Wrong Password! Try Again!</h4>
	</c:if>


	<div id="footer">
		<%@ include file="Footer.jspf"%>
	</div>
</body>
</html>

