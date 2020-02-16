<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.LinkedList"%>
    <%@page import="icsd.Medicine" %>
    <%@page import="icsd.MedicineDBHandler" %>
    <%@page import="icsd.ICSDAuthException" %>
    <%@page import="icsd.ICSDCheckAuth" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop Single User</title>

<link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="css/styleicon.css">
<script src="js/main.js"></script>
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
<%@ include file="HeaderAdmin.html" %>
<%! // this is declaration.
LinkedList<Medicine> lst=new LinkedList<>();
String medid,medname,meddesc,medphotoss,medprice,medcategory,meddosage,upquantity;
int medquantity;
int updquantity;
%>
<%// this is service method for session check and then retrieving the name of medicine
     String username=(String)session.getAttribute("username");
		if(username==null){
			response.sendRedirect(request.getContextPath()+"/ErrorPage.jsp");
		}
		medid=request.getParameter("medid");
		
      lst=MedicineDBHandler.addmedinlinkedlist();
		
		for(Medicine med:lst){
	      if(med.getId().equals(medid)){
	    	  medname=med.getName();
	    	  medcategory=med.getCategory();
	    	  meddesc=med.getDesc();
	    	  meddosage=med.getDosage();
	    	  medprice=med.getPrice();
	    	  medquantity=Integer.parseInt(med.getQuantity());
	      }
		}
%>
<div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 mb-0"><a href="AdminHome.jsp">Store</a> <span class="mx-2 mb-0">/
          </span> 
          <strong class="text-black">
          <%= medname %>
          </strong>
          </div>
          <div class="col-lg-5 col-md-5">
             </div>
             <div class="col-lg-3 col-md-3">
             <span class="text-black"> 
             Welcome <%=username %>
             </span>
             <a href="userlogin.jsp">(User)</a>
             </div>
        </div>
        </div>
        </div>
        <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-5 mr-auto">
            <div class="border text-center">
              <img src="images/product_07_large.png" alt="Image" class="img-fluid p-5">
            </div>
          </div>
          <div class="col-md-7">
            <h2 class="text-black"><%=medname %></h2>
            <p class='text-info font-normal'><%=meddesc%></p>
            

             <strong class="text-secondary font-bold">Rs. <%= medprice  %></strong>
             <p class="text-red font-normal">Only <%=medquantity %> left in stock</p>
             <div class="row mb-5">
              <div class="col-md-8">
              <h4  class="text-black">Select Quantity</h4>
              <div class="input-group mb-3" style="max-width: 300px;">
                <div class="input-group-prepend">
                  <button class="btn btn-outline-primary" type="button" onclick="minus()">&minus;</button>
                </div>
                <input type="text" class="form-control text-center" id="count" value="1" placeholder=""
                  aria-label="Example text with button addon" aria-describedby="button-addon1">
                <div class="input-group-append">
                  <button class="btn btn-outline-primary " type="button" onclick="plus()">&plus;</button>
                </div>
              </div>
              </div>
              <div class="col-md-4">
                 <p><a class="buy-now btn btn-sm height-auto px-4 py-3 btn-primary" onclick="addtocart()" >Add to cart</a></p>     
              </div>   
        </div>
            
            <div class="mt-5">
              <ul class="nav nav-pills mb-3 custom-pill" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
                    aria-controls="pills-home" aria-selected="true">Specifications</a>
                </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            
                  <table class="table custom-table">
            
                    <tbody>
                      <tr>
                        <td>MEDICINE ID</td>
                        <td class="bg-light"><%= medid %></td>
                      </tr>
                      <tr>
                        <td>MEDICINE CATEGORY</td>
                        <td class="bg-light"><%= medcategory %></td>
                      </tr>
                      <tr>
                        <td>MEDICINE DOSAGE</td>
                        <td class="bg-light"><%= meddosage %></td>
                      </tr>
                      <tr>
                        <td>MEDICINE PRICE</td>
                        <td class="bg-light">Rs. <%= medprice %></td>
                      </tr>
                    </tbody>
                  </table>
            
                </div>
            
              </div>
            </div>
        
        
        </div>
        </div>
        </div>
        
            <script type="text/javascript">
            var count = 1;
            var countEl = document.getElementById("count");
            function plus(){
            	if(count<<%= medquantity %>){
            		count++;
                    countEl.value = count;
            	}   
            }
            function minus(){
              if (count > 1) {
                count--;
                countEl.value = count;
              }  
            }
            
            function addtocart(){
            	var quantity=parseInt(document.getElementById("count").value,10);
            	window.open("http://localhost:8085/PHARMA_WEBSITE/AddToCart.jsp?medid="+<%=medid%> + "&medquantity="+quantity);
            }

             
            </script>
            <%@ include file="FooterHome.html" %>
</body>
</html>