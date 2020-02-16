<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="HeaderAdmin.html" %>
    <%@ page import="icsd.ICSDAuthException" %>
    <%@ page import="icsd.ICSDCheckAuth" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Medicine</title>
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
<% // service method session check.
ICSDCheckAuth.CheckAuthOfUser(request); // valid user
String adminname=(String)session.getAttribute("adminname");
if(adminname ==null){
	  response.sendRedirect(request.getContextPath()+"/ErrorPage.jsp");
}
%>
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 mb-0 ">
            <a href="AdminHome.jsp">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Add Medicine</strong>
          </div>
          <div class="col-lg-5 col-md-5">
             </div>
             <div class="col-lg-3 col-md-3">
             <strong class="text-black"> 
             Welcome <%=adminname %>
             </strong>
             <a href="adminlogin.jsp">(Admin)</a>
             </div>
        </div>
      </div>
    </div>
    <div class="page-wrapper  p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Medicine Details</h2>
                    <form  action="AdminMedreg.jsp" method="POST">
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Medicine name</label>
                                    <input class="input--style-4" type="text" name="txtmedname">
                                </div>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Medicine Category</label>
                                    <!-- <input class="input--style-4" type="text" name="txtlastname"> -->
                                    
                                      <select  class="input--style-4  " name="gender">
                                          <option disabled="disabled" selected="selected">Category</option>
                                          <option>Capsule</option>
                                          <option>Cream</option>
                                          <option>Syrup</option>
                                          <option>Tablet</option>
                                      </select>
                                      <div class="select-dropdown"></div>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Photo1(250*250px)</label>
                                    <div class="input-group">
                                        <input class="input--style-4 " type="number" name="intage">
                                    </div>
                                </div>
                                <div class=" col-2"></div>
                            </div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Photo2(400*700px)</label>
                                    <div class="input-group">
                                      <input class="input--style-4 " type="text" name="txtphoto2">
                                  </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Medicine Quantity</label>
                                    <input class="input--style-4" name="txtmedquantity" type="number" min="1" max="100"></input>
                                </div>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-5">
                                <div class="input-group">
                                    <label class="label">Medicine Price</label>
                                    <input class="input--style-4" type="number" name="intMedicineprice" min="1" max="1000">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                        <div  class="col-12">
                        <div class="input-group ">
                            <label class="label text-left">Medicine Description(less than 400 characters)</label>
                            <textarea rows="4" cols="100" class="input--style-4 line-height" type="text" maxlength="400" name="medicinedescription"></textarea>
                            </div>
                        </div>
                        </div>
                        <div class="row row-space">
                          <div  class="col-12">
                            <div class="input-group ">
                                <label class="label text-left">Medicine Dosage(less than 100 characters)</label>
                                <textarea rows="2" cols="100" class="input--style-4 line-height"  maxlength="100" name="medicinedescription"></textarea>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div class="p-t-15 pb-4 text-center">
                            <button class="btn btn--radius-2 btn--blue" type="submit" >Submit</button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
       
    
    
    <%@ include file="FooterHome.html" %>
</body>
</html>