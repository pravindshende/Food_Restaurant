<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Page</title>
</head>
<style>
.price {
	text-align: center;
}
body { 	background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbaqBBpmcf9sjVLQAVD152eyKbBJr7qgaePsMIPaG4ZOOB4ZJmNFCUa7ZSMQ_apmS7A4&usqp=CAU");
	background-repeat : no-repeate;
	background-size : cover;}
h1 {
	color: green;
	font-size: 30px;
	text-shadow: 2px 2px yellow;
}
h2 { margin:50px; text-align:center; font-family:arial;}
h3 { margin:230px; text-align:center; font-family:arial;}
.button { display:flex; justify-content:space-around; padding:7px; border-radius:20%; background-color:pink; text-align:center;
          margin:auto; cursor:pointer; width:15%; font-size:15px;}
          .button:hover { opacity:0.7; }
.selected { color: hotpink; border:3px solid blue; background-color:voilet; padding:20px; margin:20px; width:90%; height:100%; 
            box-sizing:border-box; box-shadow:3px 3px 3px 3px black; text-align:center; font-size:20px; border-radius:100px;}
h4 { font-size:20px; color:yellow;} 
.but { background-color: #4CAF50; padding:15px,32px; text-align:center; display:inline-block; font-size:16px; border-radius:4px;}
</style>
<body>
	<h1>
		<b><marquee> Menu Details </marquee></b>
	</h1>


  <form action="#">
	<div>
		<h3><a href="#veg"> Veg </h3>
		</a>
		<h2>
			<b><i> Paneer Masala </i></b> &nbsp <input type="checkbox"
				value="Panir Masala" name="select"> &nbsp <span class="price"> Rs.200 </span>
		</h2>
		<h2>
			<b><i> Kaju Curry </i></b><input type="checkbox" value="Kajucurry" name="select"><span
				class="price"> Rs.300 </span>
		</h2>
		<h3><a href="#nonveg"> NonVeg </h3>
		</a>
		<h2>
			<b><i> Chicken Masala </i></b><input type="checkbox"
				value="Chicken masala" name="select"><span class="price">Rs.280</span>
		</h2>
		<h2>
			<b><i> Biryani </i></b><input type="checkbox" value="biryani" name="select"><span
				class="price">Rs.150</span>
		</h2>
		<h3> <a href="#sweets"> Sweets </h3>
		</a>
		<h2>
			<b><i> Ras Malai </i></b><input type="checkbox" value="Rasmalai" name="select"><span
				class="price">Rs.550</span>
		</h2>
		<h2>
			<b><i> GulabJamun </i></b><input type="checkbox" value="Gulabjamun" name="select"><span
				class="price">Rs.350</span>
		</h2>

	
	<div class="button">
	<input type="submit" name="cart" value="Add to Cart">
	</div>
	</form>
	</div>
	
	<div id="select" class="selected">
	<h4> Your Choice is </h4>
	<%
	String s[]=request.getParameterValues("select");
	if(s!= null && s.length!=0)
	{
		for(int i=0; i<s.length; i++)
		{
			out.println(s[i]);%><br>
<% 		}
	} else{
		out.println("Empty Cart !");
	}
	%>
	</div><br>
	<form action="CInfo.jsp">
	<div class="but">
	<input type="submit" name="ok" value="Order Now">
	</div>
	</form>
</body>
</html>