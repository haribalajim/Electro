<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item ">
                    <img class="img-circle" src="<c:url value='/resources/images/apple2.png'></c:url>" alt="first slide" height="100%" width="100%">
                    
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>WELCOME TO THE Electro World</h1>
                            <p>Here You Can Browse And Buy Electronics.Order Now For Your Amazing New Arrivals</p>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <img class="img-circle" src="<c:url value='/resources/images/gif3.gif'></c:url>" alt="Second slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>The Electronics Store.</h1>
                            <p>online shopping can make your life more easier</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img  src="<c:url value='/resources/images/lap.gif'></c:url>" alt="Third slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Our Products You Love</h1>
                            <p>live Freely,Work Happily And Drive Safely!!</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img class="img-responsive" src="<c:url value='/resources/images/mob1.jpg'></c:url>" alt="forth slide" height="100%" width="100%">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p>your life,your Product...you own it!!</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->
          <h1 class="center">New Product</h1>
      <div class="item"  >
       
       <marquee scrollamount="10" direction="left" behavior="scroll">
<font size="20px">iPod nano...</font>
<img src="<c:url value='/resources/images/wi.jpg'></c:url>" width=40% height=60% />
</marquee>
                    <video class="video-center" width=50% height=50%  controls="controls" src="<c:url value='/resources/images/vio.mp4'></c:url>" >
        </video><br><br>
       
        </div>
<hr>

</div>
<hr>
</body>
</html>
