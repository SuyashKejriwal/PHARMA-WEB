<%@page import="java.io.PrintWriter"%>
<%@page import="icsd.OracleConnection" %>
<%@page import="icsd.Meduser" %>
<%@page import="icsd.UserDBHandler" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.LinkedList" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="oracle.jdbc.pool.OracleDataSource" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert User in Database</title>
</head>
<body>
<%! 
String emailid,firstname,age,lastname,mobileno,password,gender;
boolean b;
%>

<%
// This is service method.
   emailid=request.getParameter("txtemailid");
    firstname=request.getParameter("txtfirstname");
    lastname=request.getParameter("txtlastname");
    age=request.getParameter("intage");
    mobileno=request.getParameter("intmobileno");
    password=request.getParameter("txtpassword");
    gender=request.getParameter("txtgender");
    b=UserDBHandler.insertuserindb(emailid, firstname, lastname, age, mobileno, password, gender);
    if(b){
    	response.sendRedirect(request.getContextPath()+"/userlogin.jsp");
    }
%>

</body>
</html>