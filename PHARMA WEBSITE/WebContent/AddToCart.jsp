<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="icsd.Medicine" %>
    <%@ page import="icsd.MedProduct" %>
    <%@ page import="icsd.MedicineDBHandler" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add To Cart</title>
</head>
<body>
<%! // this is declaration
String medid;
int medprodquantity;
MedProduct med;
%>

<% // this is service method.
String username=(String)session.getAttribute("username");
if(username==null){
	response.sendRedirect(request.getContextPath()+"/ErrorPage.jsp");
}
medid=request.getParameter("medid");
medprodquantity=Integer.parseInt(request.getParameter("medquantity"));
System.out.println(medid + " "+ medprodquantity);
med=MedicineDBHandler.getMedProdobjbyMedid(medid, medprodquantity);
System.out.println(med);
LinkedList<MedProduct> lst=(LinkedList<MedProduct>)session.getAttribute("CART");
boolean b=true;
if(lst==null){
	lst=new LinkedList<>();
	session.setAttribute("CART", lst);
}
else{
	for(MedProduct medc:lst){
		if(medid.equals(medc.getMedid())){
			b=false;
		}
	}
}
if(b){
	lst.add(med);
}

System.out.println(med);
response.sendRedirect(request.getContextPath()+"/ListCart.jsp");
%>
</body>
</html>