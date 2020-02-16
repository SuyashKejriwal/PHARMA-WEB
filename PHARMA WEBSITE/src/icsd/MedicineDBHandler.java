package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class MedicineDBHandler {
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

	public static LinkedList<Medicine> addmedinlinkedlist() {
		LinkedList<Medicine> lst = new LinkedList<>();
		Connection con = getDBCon();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from medicine");
			ResultSet rset = stmt.executeQuery();
			String medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice, medstatus,medlargephoto;
			Medicine med;

			while (rset.next()) {
				medid = rset.getString("medicineid");
				medname = rset.getString("medname");
				meddesc = rset.getString("meddesc");
				medcategory = rset.getString("medcategory");
				meddosage = rset.getString("meddosage");
				medphoto = rset.getString("medphoto");
				medquantity = rset.getString("medquantity");
				medprice = rset.getString("medprice");
				medstatus = rset.getString("medstatus");
				medlargephoto=rset.getString("medlargephoto");
				med = new Medicine(medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice,
						medstatus,medlargephoto);
				lst.add(med);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public static LinkedList<Medicine> addselectedcatinll(String category) {
		LinkedList<Medicine> lst = new LinkedList<>();
		Connection con = getDBCon();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from medicine where medcategory=?");
			stmt.setString(1, category);
			ResultSet rset = stmt.executeQuery();
			String medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice, medstatus,medlargephoto;
			Medicine med;
			while (rset.next()) {
				medid = rset.getString("medicineid");
				medname = rset.getString("medname");
				meddesc = rset.getString("meddesc");
				medcategory = rset.getString("medcategory");
				meddosage = rset.getString("meddosage");
				medphoto = rset.getString("medphoto");
				medquantity = rset.getString("medquantity");
				medprice = rset.getString("medprice");
				medstatus = rset.getString("medstatus");
				medlargephoto=rset.getString("medlargephoto");
				med = new Medicine(medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice,
						medstatus,medlargephoto);
				lst.add(med);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return lst;
	}

	public static LinkedList<Medicine> addsearchedmedinll(String medsearch) {
		Connection con = getDBCon();
		String medkeyword = medsearch + "%";
		System.out.println(medkeyword);
		LinkedList<Medicine> lst = new LinkedList<>();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from medicine where medname like ?");
			stmt.setString(1, medkeyword);
			ResultSet rset = stmt.executeQuery();
			Medicine med;
			String medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice, medstatus,medlargephoto;
			while (rset.next()) {
				medid = rset.getString("medicineid");
				System.out.println(medid);
				medname = rset.getString("medname");
				meddesc = rset.getString("meddesc");
				medcategory = rset.getString("medcategory");
				meddosage = rset.getString("meddosage");
				medphoto = rset.getString("medphoto");
				medquantity = rset.getString("medquantity");
				medprice = rset.getString("medprice");
				medstatus = rset.getString("medstatus");
				medlargephoto=rset.getString("medlargephoto");
				med = new Medicine(medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice,
						medstatus,medlargephoto);
				lst.add(med);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public static LinkedList<Medicine> dispmedtoguest() {
		LinkedList<Medicine> lst = new LinkedList<>();
		Connection con = getDBCon();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from medicine where rownum<=6");
			ResultSet rset = stmt.executeQuery();
			String medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice, medstatus,medlargephoto;
			Medicine med;
			while (rset.next()) {
				medid = rset.getString("medicineid");
				medname = rset.getString("medname");
				meddesc = rset.getString("meddesc");
				medcategory = rset.getString("medcategory");
				meddosage = rset.getString("meddosage");
				medphoto = rset.getString("medphoto");
				medquantity = rset.getString("medquantity");
				medprice = rset.getString("medprice");
				medstatus = rset.getString("medstatus");
				medlargephoto=rset.getString("medlargephoto");
				med = new Medicine(medid, medname, meddesc, medcategory, meddosage, medphoto, medquantity, medprice,
						medstatus,medlargephoto);
				lst.add(med);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return lst;
	}
	public static void ReorderQuantity(int quantity,String medid) {
		Connection con = getDBCon();
		String medquantity=String.valueOf(quantity);
		try {
			PreparedStatement stmt=con.prepareStatement("update medicine set medquantity=? where medicineid=? ");
			stmt.setString(1, medquantity);
			stmt.setString(2, medid);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
   public static MedProduct getMedProdobjbyMedid(String medid,int medprodquantity) {
	   MedProduct med=null;
	   Connection con=getDBCon();
	   try {
		PreparedStatement stmt=con.prepareStatement("select * from medicine where medicineid=?");
		stmt.setString(1,medid);
		ResultSet rset = stmt.executeQuery();
		String medname, medphoto;
		int medprice,medtotal;
		while (rset.next()) {
			medname = rset.getString("medname");
			medphoto = rset.getString("medphoto");
			medprice = Integer.parseInt(rset.getString("medprice"));
            medtotal=medprodquantity*medprice;
            med=new MedProduct(medid, medname, medprice, medprodquantity, medtotal, medphoto);
		}
		rset.close();
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return med;
   }
}

