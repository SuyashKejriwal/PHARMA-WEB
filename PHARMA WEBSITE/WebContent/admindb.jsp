<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="oracle.jdbc.pool.OracleDataSource" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@page import="icsd.OracleConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Check</title>
</head>
<body>
<%! 
PreparedStatement stmt;
Connection con;
ResultSet rset;
boolean b=false;
String adminname;
public void jspInit(){
	try{
		con=OracleConnection.getDBCon();
		stmt=con.prepareStatement("select * from medadmin");
	}
	catch(SQLException se){
		System.out.println(se.getMessage());
	}
}

public void jspDestroy(){
	try{
		rset.close();
		stmt.close();
		con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
}
%>

<% 
// This is service method.
String emailid,password;
emailid=request.getParameter("txtadminemail");
password=request.getParameter("txtadminpassword");
rset=stmt.executeQuery();
while(rset.next()){
if((rset.getString("emailid").equals(emailid))&&(rset.getString("adminpassword").equals(password))){
	b=true;
	adminname=rset.getString("dispname");
	}
		}
if(b==true){
	session.setAttribute("adminname",adminname);
 //out.println("<script>alert('Login Successful.')</script>");
 response.sendRedirect(request.getContextPath()+"/AdminHome.jsp");
}
%>
</body>
</html>