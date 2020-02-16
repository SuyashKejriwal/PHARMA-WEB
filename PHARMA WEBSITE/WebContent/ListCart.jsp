<%@page import="icsd.MedProduct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.LinkedList" %>
    <%@ page import="icsd.Medicine" %>
    <%@ page import="icsd.MedProduct" %>
    <%@ page import="icsd.MedicineDBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Cart</title>
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
<%!
LinkedList<MedProduct> lst=new LinkedList<>();
String medid,medname,medphoto,medicineid;
int medquantity,medprice,medtotal;
%>

<%  
String username=(String)session.getAttribute("username");
if(username==null){
	response.sendRedirect(request.getContextPath()+"/ErrorPage.jsp");
}
lst=(LinkedList<MedProduct>)session.getAttribute("CART");
String remmedid=request.getParameter("removemedid");
if(remmedid!=null){
	for(MedProduct med: lst){
		medicineid=med.getMedid();
		if(remmedid.equals(medicineid)){
			lst.remove(med);
		}
	}
}
%>

<div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 mb-0 ">
            <a href="UserHome.jsp" class='text-gray font-normal'>Home</a> <span class="mx-2 mb-0">/</span>
            <span class="text-black">List Cart</span>
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
        <div class="row mb-5">
        <div class="site-blocks-table">
              <table class="tSable table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-total">Total</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                <tbody>
                <%
                for(MedProduct med:lst){
                	medid=med.getMedid();
                	medphoto=med.getMedphoto();
                	medname=med.getMedname();
                	medprice=med.getMedprice();
                    medquantity=med.getMedquantity();
                    medtotal=med.getMedtotal();
                    medphoto="Image/"+medphoto;
                    out.println("<tr>");
                    out.println("<td class='product-thumbnail'>");
                    out.println("<img src=' "+ medphoto +"' alt='Image' class='img-fluid'> </td>");
                    out.println("<td class='product-name'>");
                    out.println("<h2 class='h5 text-black'>"+medname+ "</h2></td>");
                    out.println("<td>"+medprice +"</td>");
                    out.println("<td>"+medquantity+"</td>");
                    out.println("<td>"+medtotal+"</td>");
                    out.println(" <td><a href='ListCart.jsp?removemedid="+medid+"' class='btn btn-primary height-auto btn-sm'>X</a></td>");
                    out.println("</tr>");
                         
                }
                %>
              
                  </tbody>
              </table>
            </div>
        </div>
        
        <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-12 mb-3 mb-md-0">
                <button class="btn btn-primary btn-md btn-block">Update Cart</button>
              </div>
              </div>
              </div>
              <div class="col-md-6 pl-5">
               <div class="row justify-content-end">
              <div class="col-md-7">
                <div class="row">
                  <div class="col-md-12 text-right border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Cart Totals</h3>
                  </div>
                </div>
                <div class="row mb-3">
                  <div class="col-md-6">
                    <span class="text-black">Subtotal</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black">$230.00</strong>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Total</span>
                  </div>
                  <div class="col-md-6 text-right">
                    <strong class="text-black">$230.00</strong>
                  </div>
                </div>
    
                <div class="row">
                  <div class="col-md-12">
                    <button class="btn btn-primary btn-lg btn-block" >Proceed To Checkout</button>
                  </div>
                </div>
              </div>
            </div>
              </div>
                
        
             </div>
             </div>
             
             <%@ include file="FooterHome.html" %>

</body>
</html>