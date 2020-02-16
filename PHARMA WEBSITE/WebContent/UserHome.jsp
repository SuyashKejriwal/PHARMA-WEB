<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@page import="icsd.MedicineDBHandler" %>
    <%@page import="icsd.Medicine" %>
    <%@page import="java.util.LinkedList" %>
    <%@page import="icsd.ICSDAuthException" %>
    <%@page import="icsd.ICSDCheckAuth" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
</head>
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

<body>
 <%@include file="HeaderAdmin.html" %>
<% // service method session check 
            
              ICSDCheckAuth.CheckAuthOfUser(request); // valid user
              String username=(String)session.getAttribute("username");
              if(username ==null){
            	  response.sendRedirect(request.getContextPath()+"/ErrorPage.jsp");
              }
                 %>
<div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 mb-0 ">
            <a href="userlogin.jsp" class='text-gray font-normal'>User Home</a> <span class="mx-2 mb-0">/</span>
            <span class="text-black">Store</span>
             </div>
             <div class="col-lg-5 col-md-5">
             </div>
            <div class="col-lg-3 col-md-3">
             <span class="text-black"> 
             Welcome <%=username %>
             </span>
             <a href="userlogin.jsp" class='text-gray font-normal'>(User)</a>
             </div>
             
            
         
        </div>
      </div>
    </div>
   <div class="site-section">
      <div class="container">
      
      <div class="row">
        <div class="col-lg-3 col-md-3">
        <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by category</h3>
        <button type="button" class="btn btn-secondary btn-md dropdown-toggle px-4" id="dropdownMenuReference"
          data-toggle="dropdown">category</button>  
          <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
            <a class="dropdown-item" href="UserHome.jsp">All</a>
            <a class="dropdown-item" href="UserHome.jsp?medcategory=capsule">Capsule</a>
            <a class="dropdown-item" href="UserHome.jsp?medcategory=cream">Cream</a>
            <a class="dropdown-item" href="UserHome.jsp?medcategory=syrup">Syrup</a>
            <a class="dropdown-item" href="UserHome.jsp?medcategory=tablet">Tablet</a>
    </div>

</div>

<div class="col-lg-9 col-md-9">
    <form >
        <div class="row row-space ">
            <div class="col-lg-8 col-md-8">
              <h3 class="mb-3 h6 text-uppercase text-black d-block"></h3>
                <div class="input-group p-t-15">
                <input class="input--style-4" type="text" id="searchmed" placeholder="Search by medicine">
                
            </div>
        </div>
        
        <div class="col-lg-4 col-md-4">
          <h3 class="mb-3 h6 text-uppercase text-black d-block"></h3>
            <div class="p-t-15">
                <button class="btn btn--radius-2 btn--blue"  onclick="dispsearchedmed()">Search</button>
            </div>

        </div>
    </form>     
</div>
</div>
</div>
   <!-- end of search row -->
   <div class="row">
   
   </div>
   
   <div class="row">
  <%! // this is declaration
  LinkedList<Medicine> lst=new LinkedList<>();
 String medphoto,medname,medprice,medid;
 int medquantity;
  %>
  <% // this is service method
  
  
  lst=MedicineDBHandler.addmedinlinkedlist();
  String searchedmed=request.getParameter("medname");
  String searchcat=request.getParameter("medcategory");
  System.out.println(searchedmed);
  if(searchedmed!=null){
	lst=MedicineDBHandler.addsearchedmedinll(searchedmed);  
  }
  if(searchcat!=null){
	  lst=MedicineDBHandler.addselectedcatinll(searchcat);
  }
	  
  for(Medicine med: lst){
	  medphoto=med.getPhoto();
	  medname=med.getName();
	  medid=med.getId();
	  medprice=med.getPrice();
	  medquantity=Integer.parseInt(med.getQuantity());
	  medphoto="Image/"+medphoto;
	  System.out.println(medphoto);
	  out.println(" <div class='col-sm-4 col-lg-3 text-center item mt-4 mb-4'>");
	  out.println(" <a href='ShopSingleUser.jsp?medid=");
	  out.println(medid);
	  out.println("'> <img src= ");	  
	  out.println(medphoto);
	  out.println("alt='Image' class='border border-dark'></a>");
	  out.println("<h3 class='text-dark'> <a href='ShopSingleUser.jsp?medid="+ medid+ "'>");
	  out.println(medname);
	  out.println("</a></h3>");
	  out.println("<p class='price text-center font-normal'>");
	  out.println("Rs. " + medprice);
	  out.println("</p>");
	  out.println("</div>");
	  out.println("<div class='col-sm-2 col-lg-1 '></div>");
  }
  
  %>
  </div>
   
</div>


<script >
function dispsearchedmed() 
{
	
	var medicinename=document.getElementById('searchmed').value;
	window.open("http://localhost:8085/PHARMA_WEBSITE/UserHome.jsp?medname="+medicinename);
}
</script>
<%@ include file="FooterHome.html" %>
</body>
</html>