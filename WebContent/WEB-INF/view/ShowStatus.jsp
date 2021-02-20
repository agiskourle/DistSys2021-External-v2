<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>My Status</title>
</head>
<style>
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
	font-size: 20px;
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
	border-radius: 100px;
	box-shadow: 0 3px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>
	<div class="card">
		<p>
			<strong>HOUSING SYSTEM WEB SERVICE</strong>
		</p>


		<c:choose>
			<c:when test="${status == -1}">
				<td>Application Period Not Started Yet! / Free Housing Not Permitted!</td>
				<hr
					style="height: 5px; border-width: 0; color: gray; background-color: red">
			</c:when>
			<c:otherwise>

				<c:choose>
					<c:when test="${status == 0}">
						<td>Application Period NOT over yet!</td>
					
					</c:when>
					<c:otherwise>
					
					<c:choose>
					<c:when test="${status > 100}">
						<td>You do not meet the requirements ! </td>
						<td>Ranking > 100 </td>
					
					</c:when>
					<c:otherwise>
						<td>Your Ranking :</td>
						<td>${status} - Congratulations! You meet the requirements!</td>
						
					</c:otherwise>
				</c:choose>

					</c:otherwise>
				</c:choose>

				<hr
					style="height: 5px; border-width: 0; color: gray; background-color: green">
			</c:otherwise>
		</c:choose>



		<hr
			style="height: 5px; border-width: 0; color: gray; background-color: red">
		<button class='button' onclick="myFunction()">Home</button>

		<script>
			function myFunction() {
				location
						.replace("http://localhost:8080/Spring-Web-App-ds-2021/home")
			}
		</script>
	</div>
	<div id="footer">
		<%@ include file="Footer.jspf"%>
	</div>
</body>
</html>