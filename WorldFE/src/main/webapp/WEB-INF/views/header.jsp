<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link href="<c:url value='/resources/css/icon.css'></c:url>"
	rel="stylesheet">		
	<link href="<c:url value='/resources/css/bootstrap1.min.css'></c:url>"
	rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<title>Electro World</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<c:url value='/home'></c:url>'><font face="Algerian"
					color="black">ELECTRO W</font></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav nav-tabs">

					<li class="active"><a href='<c:url value='/home'></c:url>'
						class="fontSize"><i class="glyphicon glyphicon-home"></i> Home</a></li>
					<li><a href="<c:url value='/aboutus'></c:url>"><i
							class="glyphicon glyphicon-user"></i> About Us</a></li>

					<li><a href="<c:url value='/all/getallproducts'></c:url>"><i
							class="glyphicon glyphicon-briefcase"></i> All Products</a></li>

					
						<li><a href="<c:url value='/contactus'></c:url>"><i
								class="glyphicon glyphicon-phone"></i> Contact Us</a></li>
					

					<security:authorize access="hasRole('ROLE_USER')">
						<li><a href="<c:url value='/cart/getcart'></c:url>"><i
								class="glyphicon glyphicon-shopping-cart"></i></a></li>
					</security:authorize>

					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="<c:url value='/admin/getproductform'></c:url>">Add
								Product</a></li>
					</security:authorize>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Category<span class="caret"></span></a>

						<ul class="dropdown-menu">
							<c:forEach items="${categories }" var="category">
								<li><a
									href="<c:url value='/all/searchByCategory?searchCondition=${category.categoryname }'></c:url>">${category.categoryname }</a>
								</li>

							</c:forEach>
							<li class="divider"></li>
							<li><a
								href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All</a>
							</li>
						</ul></li>
<%-- 
					<li><a
						href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>"><i
							class="glyphicon glyphicon-search"></i> Find</a></li>


					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form> --%>


					<c:if test="${pageContext.request.userPrincipal.name==null }">
						<li class="dropdown  pull-right"><a
							href="<c:url value='/all/registrationform'></c:url>"
							data-toggle="dropdown" class="dropdown-toggle"><i
								class="glyphicon glyphicon-new-window"></i> Join Us<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/all/registrationform'></c:url>"><i
										class="glyphicon glyphicon-new-window"> </i> Sign Up</a></li>
								<li><a href="<c:url value='/login'></c:url>"><i
										class="glyphicon glyphicon-log-in"> </i> Log In</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
						<li><a href="#">Hi
								${pageContext.request.userPrincipal.name }</a></li>
						<li><a
							href="<c:url value='/j_spring_security_logout'></c:url>"><i
								class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
					</c:if>

				</ul>
				</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	     <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
    
      <div  class="navbar btn pull-right">
      <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://www.instagram.com"><i id="social-em" class="fa fa-instagram fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
   <a href="https://github.com/"><i id="social-bk" class="fa fa-github-square fa-3x social"></i></a>
	             <a href="https://www.linkedin.com"><i id="social-li" class="fa fa-linkedin-square fa-3x social"></i></a>
   
    </div>
     <p>Copyright © 2018-2019 Electro World Inc. All rights reserved.
 
  <a href="#privacy">Privacy Policy</a> |
  <a href="<c:url value='/contactus'></c:url>">Contact</a> |
  <a href="<c:url value='/sitemap'></c:url>">Site Map</a></p>
  </div>
  </div>
<script>
// When the user scrolls down 20px from the top of the document, slide down the navbar
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-50px";
  }
}
</script>

</body>
</html>