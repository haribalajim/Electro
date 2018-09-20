<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/registration.css'></c:url>" rel="stylesheet">
<link href="<c:url value='/resources/css/login.css'></c:url>" rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>

<!-- <style>
body#LoginForm{ background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
</style> -->
<script type="text/javascript">

function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		//shippingaddress is same as billingaddress
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
	}
}



$(document).ready(function(){
	$('#form').validate({
		rules:{
			firstname:{required:true},
			lastname:{required:true},
			phonenumber:{required:true,number:true,minlength:10,maxlength:10},
			"user.email":{required:true,email:true},
			"user.password":{required:true,minlength:5,maxlength:10},
			"billingaddress.apartmentnumber":{required:true},
			"billingaddress.streetname":{required:true},
			"billingaddress.state":{required:true},
			"billingaddress.city":{required:true},
			"billingaddress.country":{required:true},
			"billingaddress.zipcode":{required:true,number:true}
		},
		messages:{
			firstname:{required:"Firstname is mandatory"},
			phonenumber:{required:"Phonenumber is required"},
			"user.email":{required:"Email is required",email:"Please enter valid email address"}
		}
	})
})
</script>
</head>
<body id="LoginForm" class="body-section">
<div class="container">
<hr>
<hr>
<hr>
<h1 style="text-align:center;"><a style="font-family:Forte">Sign Up</a></h1><hr>
<c:url value="/all/registercustomer" var="url"></c:url>
<form:form modelAttribute="customer" action="${url }" id="form">

<form:hidden path="id"/>

<form:label path="firstname">Enter Firstname</form:label>
<form:input path="firstname" id="firstname"/>


<form:label path="lastname">Enter Lastname</form:label>
<form:input path="lastname" id="lastname"/>


<form:label path="phonenumber">Enter Phonenumber</form:label>
<form:input path="phonenumber" id="phonenumber"/>

<hr>
<b>Login Credentials</b><br>
<form:label path="user.email">Enter Email</form:label>
<form:input path="user.email" id="user.email" type="email"/>
<span style="color:red">${error }</span>
<form:label path="user.password">Enter password</form:label>
<form:input path="user.password" id="user.password" type="password"/>



<hr>
<b>Billing Address</b><br>

<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="billingaddress.apartmentnumber" id="billingaddress.apartmentnumber"/>

<form:label path="billingaddress.streetname">Enter streetname</form:label>
<form:input path="billingaddress.streetname" id="billingaddress.streetname"/>

<form:label path="billingaddress.city">Enter city</form:label>
<form:input path="billingaddress.city" id="billingaddress.city"/>

<form:label path="billingaddress.state">Enter state</form:label>
<form:input path="billingaddress.state" id="billingaddress.state"/>

<form:label path="billingaddress.country">Enter country</form:label>
<form:input path="billingaddress.country" id="billingaddress.country"/>

<form:label path="billingaddress.zipcode">Enter Zipcode</form:label>
<form:input path="billingaddress.zipcode" id="billingaddress.zipcode"/>
<hr>
<b>Shipping address</b><br>
Check this if shipping address is same as billing address
<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
<form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
<form:input path="shippingaddress.apartmentnumber" id="shippingaddress.apartmentnumber"/>

<form:label path="shippingaddress.streetname">Enter streetname</form:label>
<form:input path="shippingaddress.streetname" id="shippingaddress.streetname"/>

<form:label path="shippingaddress.city">Enter city</form:label>
<form:input path="shippingaddress.city" id="shippingaddress.city"/>

<form:label path="shippingaddress.state">Enter state</form:label>
<form:input path="shippingaddress.state" id="shippingaddress.state"/>

<form:label path="shippingaddress.country">Enter country</form:label>
<form:input path="shippingaddress.country" id="shippingaddress.country"/>

<form:label path="shippingaddress.zipcode">Enter zipcode</form:label>
<form:input path="shippingaddress.zipcode" id="shippingaddress.zipcode"/>
<br>
<input type="submit" value="Register" style="background-color:maroon;">

</form:form>
</div>
<hr>
<hr>

<!-- <form class="form-horizontal" action='' method="POST">
  <fieldset>
    <div id="legend">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      Username
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
      </div>
    </div>
 
    <div class="control-group">
      E-mail
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
        <p class="help-block">Please provide your E-mail</p>
      </div>
    </div>
 
    <div class="control-group">
      Password
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
        <p class="help-block">Password should be at least 4 characters</p>
      </div>
    </div>
 
    <div class="control-group">
      Password
      <label class="control-label"  for="password_confirm">Password (Confirm)</label>
      <div class="controls">
        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge">
        <p class="help-block">Please confirm password</p>
      </div>
    </div>
 
    <div class="control-group">
      Button
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
  </fieldset>
</form>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form">
        <fieldset>

          Form Name
          <legend>Address Details</legend>

          Text input
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Address Line 1" class="form-control">
            </div>
          </div>

          Text input
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Address Line 2" class="form-control">
            </div>
          </div>

          Text input
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" placeholder="City" class="form-control">
            </div>
          </div>

          Text input
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" class="form-control">
            </div>
          </div>



          Text input
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Country" class="form-control">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Save</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div>/.col-lg-12
</div>/.row -->
</body>
</html>

