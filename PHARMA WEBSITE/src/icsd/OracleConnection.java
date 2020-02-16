package icsd;

import java.sql.Connection;
import java.sql.SQLException;

import oracle.jdbc.pool.OracleDataSource;

public class OracleConnection {
	public static Connection getDBCon(){
		Connection con=null;
		try{
			OracleDataSource ods=new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con=ods.getConnection("suyash","icsd");
		}
		catch(SQLException se){
			System.out.println(se.getMessage());
		}
		return con;
	}

}
