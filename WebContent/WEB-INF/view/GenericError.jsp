<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Error</title>
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
		background-image: url(https://4kwallpaper.wiki/wp-content/uploads/2019/07/108049.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

i {
	color: red;
	font-size: 100px;
	line-height: 200px;
}

.card {
	background: white;
	padding: 60px;
	border-radius: 5px;
	box-shadow: 0 2px 3px red;
	display: inline-block;
	margin: 0 auto;
}
</style>
<body>
	<div class="card">
		<div
			style="border-radius: 200px; height: 200px; width: 200px; background: orange; margin: 0 auto;">
			<i class="?">?</i>
		</div>
		<h1>Error! Something Went Wrong!</h1>
		<hr
					style="height: 5px; border-width: 0; color: gray; background-color: red">
		<button class = "button" onclick="myFunction()">Home</button>

		<script>
			function myFunction() {
				location.replace("http://localhost:8080/Spring-Web-App-ds-2021/home")
			}
		</script>
	</div>
		<div id="footer">
		<%@ include file="Footer.jspf"%>
	</div>
</body>
</html>