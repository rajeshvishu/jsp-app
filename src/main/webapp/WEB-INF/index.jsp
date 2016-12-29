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
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
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

<table border="0" style="margin-left: 300px">
<%-- <tr>
<td>
Login-Name: &nbsp;<input type="test" name="loginName" id="loginName"  /><br/><br/>
Password: &nbsp;<input type="password" name="psw" id="psw" style="margin-left:21px "><br/><br/>
<input type="button" name="Login" value="Login" style="background-color:Red;"/>

</td>

<td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><img alt="" src="${pageContext.request.contextPath}/resources/img/images.png">
</td>
</tr> --%>

<tr><td>
${msg}
<div id="login-modal" tabindex="-1" role="dialog"   >
    	  <div class="modal-dialog">
				<div class="loginmodal-container">
			<%-- 	<img style="width:70px; height: 70px; " alt="" src="${pageContext.request.contextPath}/resources/img/images.png"> --%>
					<h1>Login to Your Account</h1><br>
				<form:form method="POST" commandName="login" action="${pageContext.servletContext.contextPath}/login">
					<form:input path="name" />
				<form:input path="password" />
					<input type="submit" name="login" class="login loginmodal-submit" value="Login">
				</form:form>
				  <div class="login-help">
					<a href="${pageContext.request.contextPath}/register">Register</a> - <a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>
		  </div>
</td>

<td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><%-- <img style="width:70px; height: 70px" alt="" src="${pageContext.request.contextPath}/resources/img/images.png"> --%>
</td>

</tr>

</table>

</div>

</body>
</html>