package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class UserDBHandler {
	public static Connection getDBCon() {
		Connection con = null;
		try {
			OracleDataSource ods = new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con = ods.getConnection("suyash", "icsd");
			System.out.println("Connection established");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public static  boolean insertuserindb(String emailid,String fname,String lname,String age,String mobileno,String userpassword,String gender) {
		boolean b=false;
		Connection con=getDBCon();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into meduser values(?,?,?,?,?,?,?)");
			stmt.setString(1, emailid);
			stmt.setString(2, fname);
			stmt.setString(3, lname);
			stmt.setString(4, age);
			stmt.setString(5, mobileno);
			stmt.setString(6, userpassword);
			stmt.setString(7, gender);
			stmt.executeUpdate();
			b=true;
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
  public  static LinkedList<Meduser> adduserinlinkedlist(){
	  LinkedList<Meduser> lst=new LinkedList<>();
	  Connection con=getDBCon();
	  try {
		PreparedStatement stmt=con.prepareStatement("select * from meduser");
		ResultSet rset=stmt.executeQuery();
//		Name         Null     Type         
//		------------ -------- ------------ 
//		EMAILID      NOT NULL VARCHAR2(50) 
//		FNAME        NOT NULL VARCHAR2(20) 
//		LNAME                 VARCHAR2(20) 
//		AGE                   NUMBER       
//		MOBILENO              VARCHAR2(30)     
//		USERPASSWORD NOT NULL VARCHAR2(40) 
//		GENDER       NOT NULL VARCHAR2(40)
		String emailid,fname,lname,userpassword,mobileno,gender;
		int age;
		Meduser meduser;
		while(rset.next()) {
			emailid=rset.getString("emailid");
			fname=rset.getString("fname");
			lname=rset.getString("lname");
			age=rset.getInt("age");
			mobileno=rset.getString("mobileno");
			userpassword=rset.getString("userpassword");
			gender=rset.getString("gender");
			meduser= new Meduser(fname, lname, emailid, userpassword, age, mobileno, gender);
			lst.add(meduser);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return lst;
  }
}
