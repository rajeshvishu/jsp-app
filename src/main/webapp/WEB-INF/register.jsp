<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
    <link href="${pageContext.request.contextPath}/resources/blog.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>

<body>
 <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item active" href="#">Home</a>
          <a class="blog-nav-item" href="#">New features</a>
          <a class="blog-nav-item" href="#">Press</a>
          <a class="blog-nav-item" href="#">New hires</a>
          <a class="blog-nav-item" href="#">About</a>
        </nav>
      </div>
    </div>
<div>
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form:form method="POST" commandName="login" action="${pageContext.servletContext.contextPath}/register">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label>
								<form:input  path="name" placeholder="Enter First Name Here.." class="form-control"/>
							</div>
							
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<form:input path="lastname" type="text" placeholder="Enter Last Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-6 form-group">
								<label>Password</label>
								<form:input path="password" type="text" placeholder="Enter password" class="form-control"/>
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<form:textarea path="address" placeholder="Enter Address Here.." rows="3" class="form-control"/></textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label>
								<form:input path="city" type="text" placeholder="Enter City Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>State</label>
								<form:input path="state" type="text" placeholder="Enter State Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Zip</label>
								<form:input path="zip" type="text" placeholder="Enter Zip Code Here.." class="form-control"/>
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Title</label>
								<form:input path="title" type="text" placeholder="Enter Designation Here.." class="form-control"/>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Company</label>
								<form:input type="text" path="company" placeholder="Enter Company Name Here.." class="form-control"/>
							</div>	
						</div>						
					<div class="form-group">
						<label>Phone Number</label>
						<form:input path="number" type="text" placeholder="Enter Phone Number Here.." class="form-control"/>
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<form:input path="email" type="text" placeholder="Enter Email Address Here.." class="form-control"/>
					</div>	
					<div class="form-group">
						<label>Website</label>
						<form:input path="website" type="text" placeholder="Enter Website Name Here.." class="form-control"/>
					</div>
					<button type="submit" class="btn btn-lg btn-info">Submit</button>					
					</div>
		</form:form>
				</div>
	</div>
	</div>
	</div>

</body>
</html>