<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html {   background: #faf7f2;
    box-sizing: border-box;
    font-family: "Lato",sans-serif;
    font-size: 14px;
    font-weight: 400;}
body { font-family: Roboto,Arial,sans-serif; font-size: 16px; color:#666;}
h1 { font-family: Brush Script MT; color:brown;}
.card-container {
    width:60%; height:550px; background-color:Lighttgray; box-shadow:5px 25px 40px purple;
    margin: 25px auto 0;
    position: relative;
    display: grid;
    justify-content: space-around;
    align-items: flex-start;
}
.card { font-style:italic; font-size:20px; color: DodgerBlue;}
.btn { background-color: #4CAF50; text-align:center; display:inline-block; font-size:16px; border-radius:4px;}
</style>
</head>
<body>

<form action="Connectiondb" method="post">
<div class="card-container">
<h1> Customer Details </h1>
<div class="card">
Customer Name : <input type="text" name="cname" value="Enter name here"> <br>
Mobile No. : <input type="text" name="mob" value="Enter mobile number"> <br> 
Address : <textarea rows="5" cols="30" name="add" > Enter address here </textarea>
</div>

<button class="btn">Confirm Order</button>
</div>
</form>

</body>
</html>