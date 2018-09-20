
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/login.css'></c:url>"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="body-section">
<hr>
<hr>
	<div class="container">
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>Login</h2>
					<p>Please enter your email and password</p>
				</div>
				<span style="color: red">${error }</span><br> ${msg }<br>
				<c:url value="/j_spring_security_check" var="url"></c:url>
				<form id="Login" method="post" action="${url }">

					<div class="form-group">


						<input type="email" class="form-control" name="j_username"
							placeholder="Email Address">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" name="j_password"
							placeholder="Password">

					</div>
					<!-- <div class="forgot">
        <a href="reset.html">Forgot password?</a>
</div> -->
					<button type="submit" class="btn btn-primary">Login</button>
					<p>Or</p>
					<a href="<c:url value='/all/registrationform'></c:url>"
						class="btn btn-primary"> Sign Up</a>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
