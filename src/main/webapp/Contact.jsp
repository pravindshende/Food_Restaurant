<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style> 
h2 { color: red; font-size:30px; text-shadow:0 0 3px #FF0000;}
.card { width:400; hight:350; text-align: center; border:5px solid green; padding:30px; margin:0; background-color:Bisque;
        color:DarkCyan; border-radius:30%;} 
.btn { background-color:#0a0a23; color:#fff; border:none; border-radius:10px; box-shadow:2px 2px 2px 2px red;}
</style>
<body>

<marquee><h2> Contact Us </h2></marquee>
<p> We are always ready to help you <b>24*7.</b> </p> <br><br>
<h4> Mail Us : pscircle151@gmail.com </h4>
<h4> Call Us : +91987256854 </h4> <br><br>

<div class="card">
<h3> For any query Comment us : </h3>
Your Name: <input type=text placeholder=enter your name><br>
Email    : <input type = email placeholder=enter your mail><br>
Comments :<textarea name=subject placeholder="Enter your comments here" ></textarea><br>
<button class="btn">Submit</button>
</div> 

</body>
</html>