<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - WEB</title>
</head>
<body>
	<div id="header">
		<%@ include file="Header.jspf"%>
	</div>
	<div id="content">

		<h1 style="color: white; text-align: center;">STUDENT PORTAL</h1>
		<h3 style="color: white; text-align: center;">Welcome Student : ${pageContext.request.userPrincipal.name}</h3>
				<h4 style="color: white; text-align: center;">
			User Rights :
			<sec:authentication property="principal.authorities" />
		</h4>
		<h2 style="color: white; text-align: center;">MENU</h2>

		
			<p>Check Ranking & Housing Status</p>
			<button class="button" onclick="myFunction1()">My Status</button>
			<script>
				function myFunction1() {
					location
							.replace("http://localhost:8080/Spring-Web-App-ds-2021/home/check")
				}
			</script>

			<p>Change Contact Information</p>
			<button class="button" onclick="myFunction2()">Change</button>
			<script>
				function myFunction2() {
					location
							.replace("http://localhost:8080/Spring-Web-App-ds-2021/home/change")
				}
			</script>
			
			<p>Send Application</p>
			<button class="button" onclick="myFunction3()">Send Application</button>
			<script>
				function myFunction3() {
					location
							.replace("http://localhost:8080/Spring-Web-App-ds-2021/home/send")
				}
			</script>

		<p>Log Out</p>
		<form:form action="${pageContext.request.contextPath}/logout"
			method="post">
			<input type="submit" value="Logout" />
		</form:form>
		
	</div>
	<br>
	<br>
	<div id="footer">
		<%@ include file="Footer.jspf"%>
	</div>
<body>
</html>