<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="icsd.Meduser"%>
<%@page import="icsd.UserDBHandler" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.util.LinkedList" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="oracle.jdbc.pool.OracleDataSource" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@page import="icsd.OracleConnection"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Check.</title>
</head>
<body>
<%! 
PreparedStatement stmt;
Connection con;
ResultSet rset;
LinkedList<Meduser> lst=new LinkedList<>();
boolean b=false;
String username;


%>
       
 <% 
 lst=UserDBHandler.adduserinlinkedlist();
 String useremail,password;
 useremail=request.getParameter("txtusername");
 password=request.getParameter("txtuserpassword");
 for(Meduser meduser: lst){
  if((meduser.getEmailid().equals(useremail))&&(meduser.getPassword().equals(password))){
	  username=meduser.getFirstname();
	  session.setAttribute("username",username);
	  b=true;
	  break;
 }
 }
   if(b){
	   System.out.println("Data checked in db.");
	   response.sendRedirect(request.getContextPath()+"/UserHome.jsp");
   }
   else{
	   response.sendRedirect(request.getContextPath()+"/home.jsp");
   }
   
%>
}
</body>
</html>