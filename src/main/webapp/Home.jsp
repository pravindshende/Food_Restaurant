<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<style>
body {
	font-family: Arial, sans-serif;
	background-image:url("https://img.freepik.com/free-photo/happy-waiter-serving-food-group-cheerful-friends-pub_637285-12525.jpg?w=2000");}
.header {
	padding: 80px;
	text-align: center;
	color: white;
}

.header h1 {
	font-size: 40px;
	font-family: times new roman,times,serif;
	color:pink;
	text-shadow: 2px 2px #ff0000; 
}
p { 	font-size: 30px;
	font-family: times new roman,times,serif;
	color:pink;
	text-shadow: 4px 4px blue; }

.navbar {
	overflow: hidden;
	display:flex;
	align-item:center;
	justify-content:space-around;
}

.navbar a {
    font-size:20px;
	float: left;
	display: block;
	color: pink;
	text-align: center;
	padding: 14px 20px;
	text-shadow: 2px 2px purple
	; 
	
}
.navbar a.right{ float:right;}
.navbar a.hover{background-color: pink; color: black;}
</style>

<body>

	<div class="navbar">
		<a href="Menu.jsp"> Menu </a>
		<a href="About.html"> About </a>
		<a href="Contact.jsp"> ContactUs </a>
	</div>
	<div class="header">
		<h1> PS FoodCorner </h1>
		<p><b> Flavors for Royalty </p></b>
	</div>


</body>
</html>