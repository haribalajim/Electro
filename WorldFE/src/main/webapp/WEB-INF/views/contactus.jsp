<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value='/resources/css/login.css'></c:url>" rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="body-section">
 <hr>
<hr>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-default pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Electro World, Inc.</strong><br>
                Near,#45,1st Floor, Marenahalli Flyover,Outer Ring Rd<br>
                BTM Layout,Bengaluru,Karnataka<br>
                <abbr title="Phone">
                    P :</abbr>
                9944588084
            </address>
            <address>
                <strong>Mail Id :</strong><br>
                <strong href="mailto:#">electroworld@gmail.com</strong>
            </address>
           </div> 
            </form>
        </div>
    </div>
</div>
<div class="container-fluid">
 <div class="row-fluid">
        <div class="span8">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.861097725578!2d77.59773371418609!3d12.91664779089194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1503ff18732b%3A0x7c50093aad0f2011!2sNIIT+Bangalore+BTM+Layout+Centre!5e0!3m2!1sen!2sin!4v1537190151776" width="100%" height="100" frameborder="0" style="border:0" allowfullscreen></iframe>
           </div>
           </div>
           </div>
           <hr>
           <hr>
</body>
</html>