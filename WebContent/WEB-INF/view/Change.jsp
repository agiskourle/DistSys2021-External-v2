<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Change Contact Information</title>
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
	font-family: century;
		font-size: 15px;
	padding: 40px 0;
	background-image: url(https://4kwallpaper.wiki/wp-content/uploads/2019/07/108049.jpg);
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
	border-radius: 25px;
	box-shadow: 0 3px 3px #C8D0D8;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>
	<div class="card">
		<form:form action="changeForm" method="POST">

			<h1>Change Contact Information</h1>
			<p><strong>FORM</strong></p>
			<hr style="height:3px;border-width:0;color:gray;background-color:black">
			<label for="phone"><b>Your Phone:</b></label> <input type="text"
				placeholder="Enter your phone number" name="phone" required>
			<hr style="height:3px;border-width:0;color:gray;background-color:black">

			<label for="mail"><b>Your Mail:</b></label> <input type="text"
				placeholder="Enter your e-mail" name="mail" required>
			<hr style="height:3px;border-width:0;color:gray;background-color:black">
			<input type="submit" value="Change"/>
		</form:form>
		<hr style="height:5px;border-width:0;color:gray;background-color:green">
				<hr style="height:5px;border-width:0;color:gray;background-color:red">
		<button class ="button" onclick="myFunction()">Home</button>

		<script>
			function myFunction() {
				location
						.replace("http://localhost:8080/Spring-Web-App-ds-2021/home")
			}
		</script>
	</div>
	<br>
	<br>
	<div id="footer">
		<%@ include file="Footer.jspf"%>
	</div>
</body>
</html>

