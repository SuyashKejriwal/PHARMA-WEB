<%@page import="icsd.Medicine"%>
<%@page import="java.util.LinkedList"%>
<%@page import="icsd.MedicineDBHandler" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pharma Website</title>
<link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
<link rel="stylesheet" href="css/styleicon.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/site-base.scss">
   <link rel="stylesheet" href="css/site-blocks.scss">
   <link rel="stylesheet" href="css/site-navbar.scss">
   <link rel="stylesheet" href="css/style-navbar.scss">
</head>
<body>
   <%@include file="HeaderHome.html" %>
   <%! LinkedList<Medicine> lst=new LinkedList<>();
   String medphoto,medname,medprice;
   %>
   <% lst=MedicineDBHandler.dispmedtoguest(); %>
<div class="site-blocks-cover" style="background-image: url('http://localhost:8085/PHARMA_WEBSITE/Image/guestwelcome.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
            <div class="site-block-cover-content text-center">
              <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
              <h1>Welcome To Pharma</h1>
               <p>
                <a href="#shopguest" class="btn btn-primary px-5 py-3">Shop Now</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
        <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="title-section text-center col-12">
            <h2 class="text-uppercase">Products</h2>
          </div>
        </div>
        
        <div class="row" id="shopguest">
        <% for (Medicine med:lst){
        	medphoto=med.getPhoto();
      	  medname=med.getName();
          medprice=med.getPrice();
          out.println(" <div class='col-sm-6 col-lg-4 text-center item mb-4'>");
          out.println("<img src='Image/"+medphoto+"' class='border border-secondary' alt='Image'>");
          out.println("<h3 class='text-dark'>"+medname+"</h3>");
          out.println("</div>");
          
        }	
        %>
        
        </div>
        <div class="row mt-5">
          <div class="col-12 text-center">
            <a href="userlogin.jsp" class="btn btn-primary px-4 py-3">View All Products</a>
          </div>
        </div>
        <div class="row mt-5"></div>
        
        <div class="site-section bg-secondary bg-image" style="background-image: url('http://localhost:8085/PHARMA_WEBSITE/Imagebg_2.jpg');">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('http://localhost:8085/PHARMA_WEBSITE/Image/bg_1.jpg');">
              <div class="banner-1-inner align-self-center">
                <h2>Pharma Products</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('http://localhost:8085/PHARMA_WEBSITE/Image/bg_2.jpg');">
              <div class="banner-1-inner ml-auto  align-self-center">
                <h2>Rated by Experts</h2>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae ex ad minus rem odio voluptatem.
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

        
        </div>
        </div>
<%@include file="FooterHome.html" %>
</body>
</html>