<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<!--  CSS  -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>  

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background{
clip-path: polygon(50% 0%, 90% 20%, 100% 52%, 81% 81%, 3% 92%, 24% 57%, 10% 20%);
}
</style>


</head>
<body>
	
<!-- navbar -->
<%@include file="normal_navbar.jsp" %>
	
<!-- Banner -->	
	
<div class="container-fluid p-0 m-0">

<div class ="jumbotron primary-background text-white">
	<div class="container"	>
	<h3 class="display=3">Welcome,Folks</h3>
	<p>Welcome to Technical blog ,World of Technologies</p>
	<button class="btn btn-outline-light"><span class="fa fa-power-off"></span>  Start now!</button>
	<a href="login_page.jsp" class="btn btn-outline-light"><span class="	fa fa-hourglass-1 fa-spin"></span> login</a>
	
	</div>
</div>
</div>
<br>

<!-- cards -->
<div class="container">
	<div class="row">
	<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
		
		<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
		
		<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
	<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
		
		<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
		
		<div class="col-md-4">
		<div class="card" >
  		<div class="card-body">
   		<h5 class="card-title">Card title</h5>
    	<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    	<a href="#" class="btn btn-primary">Go somewhere</a>
  				</div>
			</div>
		</div>
	</div>
</div>




	
	<!-- JavaScript -->
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<script src="js/myjs.js" type="text/javascript"></script>


	
	
</body>
</html>