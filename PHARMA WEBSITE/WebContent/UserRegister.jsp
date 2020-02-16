<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="HeaderHome.html" %>
    <%@page import="icsd.UserDBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registeration Page</title>
<link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="css/styleicon.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/util.css">
  <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/site-base.scss">
   <link rel="stylesheet" href="css/site-blocks.scss">
   <link rel="stylesheet" href="css/site-navbar.scss">
   <link rel="stylesheet" href="css/style-navbar.scss">
   <link href="css/mainreguser.css" rel="stylesheet" media="all">
</head>
<body>
 <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0 ">
            <a href="userlogin.jsp">User</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Registration</strong>
          </div>
        </div>
      </div>
    </div>
   <!--  registration page starts -->
   <div class="page-wrapper  p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registration Form</h2>
                    <form  action="UserDBreg.jsp" method="POST">
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                    <input class="input--style-4" type="text" name="txtfirstname">
                                </div>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <input class="input--style-4" type="text" name="txtlastname">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Age</label>
                                    <div class="input-group">
                                        <input class="input--style-4 " type="number" name="intage">
                                    </div>
                                </div>
                                <div class=" col-2"></div>
                            </div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="txtgender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="txtgender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="txtemailid">
                                </div>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Mobile Number</label>
                                    <input class="input--style-4" type="number" name="intmobileno">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                        <div  class="col-5">
                        <div class="input-group">
                            <label class="label">Password</label>
                            <input class="input--style-4" type="password" name="txtpassword">
                            </div>
                        </div>
                        <div class="col-2"></div>
                        <div  class="col-5">
                        <div class="input-group">
                            <label class="label">Confirm Password</label>
                            <input class="input--style-4" type="password" name="txtcpassword">
                            </div>
                        </div>
                        </div>
                        <div class="p-t-15 text-center">
                            <button class="btn btn--radius-2 btn--blue" type="submit" >Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%! String emailid,firstname,age,lastname,mobileno,password,gender;  %>
    <% // this is a service method.
   
    /* out.println("<script>");
    out.println("function insertdata(){");
    emailid=request.getParameter("txtemailid");
    firstname=request.getParameter("txtfirstname");
    lastname=request.getParameter("txtlastname");
    age=request.getParameter("intage");
    mobileno=request.getParameter("intmobileno");
    password=request.getParameter("txtpassword");
    gender=request.getParameter("txtgender");
    out.println("var b="+UserDBHandler.insertuserindb(emailid, firstname, lastname, age, mobileno, password, gender));
    out.println("if (b){");
    out.println("window.open('http://localhost:8085/PHARMA_WEBSITE/userlogin.jsp') ");
    out.println("}}</script>"); */
    %>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>
  
  
    <%@include file="FooterHome.html" %>
</body>
</html>