<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
<%@page import="com.tech.blog.entities.Message"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>

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
	
	
	<main class="d-flex align-items-center primary-background " style="height:80vh">

	<div class="container">
		<div class="row"> 
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary-background text-while">
						<p>login here</p>
						
					</div>
					
					<%-- Display message in case of invalid/logged out/ 	 login  --%>
					
					<%
						Message m=(Message) session.getAttribute("msg");
						if(m!=null){
	
					%>
					<div class="alert <%= m.getCssClass()%>" role="alert">
  						<%=m.getContent() %>
  					</div>	
					
					<%
							session.removeAttribute("msg");
						}
					
					%>
						
						
						
							
					<div class="card-body">
						<form action="LoginServlet" method="get" >
  							<div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
							  </div>
							<div class="container text centered">
							  <button type="submit" class="btn btn-primary">Submit</button>
							 </div>
						</form>
												
					
					</div>
				</div>
			
			
			</div>
			
		</div>
	</div>
</main>
<!-- JavaScript -->
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<script src="js/myjs.js" type="text/javascript"></script>



</body>
</html>