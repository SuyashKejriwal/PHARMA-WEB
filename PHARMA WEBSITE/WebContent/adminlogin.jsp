<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="HeaderHome.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
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
</head>
<body>
  <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0 ">
            <a href="adminlogin.jsp">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Admin Login</strong>
          </div>
        </div>
      </div>
    </div>

<div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <form  action="admindb.jsp" class="login100-form validate-form p-l-55 p-r-55 p-t-178">
            <span class="login100-form-title">
              Admin Login
            </span>
  
            <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter emailid">
              <input class="input100" type="email" name="txtadminemail" placeholder="Admin Email-id">
              <span class="focus-input100"></span>
            </div>
  
            <div class="wrap-input100 validate-input" data-validate = "Please enter password">
              <input class="input100" type="password" name="txtadminpassword" placeholder="Password">
              <span class="focus-input100"></span>
            </div>
  
            <div class="text-right p-t-13 p-b-23 ">
              <span class="txt2">
  
              <a href="#" class="txt2">
               Forgot Password?
              </a>
              </span>
            </div>
  
            <div class="container-login100-form-btn p-b-40">
             <input type="submit" class="login100-form-btn" value="Login"> 
                         </div>
  
           <!-- 
           <div class="flex-col-c p-t-70 p-b-40">
              <div class="txt1 p-b-9 text-center">
                Donot have an account?
              </div>
                <div class="text-center ">
                  <a href="UserRegister.jsp" class="txt3 text-center">
                    Register now
                  </a>
                </div>
              
            </div>
            --> 
          </form>
        </div>
      </div>
    </div>
    
  <%@include file="FooterHome.html" %>
</body>
</html>