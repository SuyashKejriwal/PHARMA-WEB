package icsd;

public class MedProduct {
public MedProduct(String medid, String medname, int medprice, int medquantity, int medtotal, String medphoto) {
		super();
		this.medid = medid;
		this.medname = medname;
		this.medprice = medprice;
		this.medquantity = medquantity;
		this.medtotal = medtotal;
		this.medphoto = medphoto;
	}
@Override
public String toString() {
	return "MedProduct [medid=" + medid + ", medname=" + medname + ", medprice=" + medprice + ", medquantity="
			+ medquantity + ", medtotal=" + medtotal + ", medphoto=" + medphoto + "]";
}
private String medid;
private String medname;
private int medprice;
private int medquantity;
private int medtotal;
private String medphoto;
public String getMedid() {
	return medid;
}
public void setMedid(String medid) {
	this.medid = medid;
}
public String getMedname() {
	return medname;
}
public void setMedname(String medname) {
	this.medname = medname;
}
public int getMedprice() {
	return medprice;
}
public void setMedprice(int medprice) {
	this.medprice = medprice;
}
public int getMedquantity() {
	return medquantity;
}
public void setMedquantity(int medquantity) {
	this.medquantity = medquantity;
}
public int getMedtotal() {
	return medtotal;
}
public void setMedtotal(int medtotal) {
	this.medtotal = medtotal;
}
public String getMedphoto() {
	return medphoto;
}
public void setMedphoto(String medphoto) {
	this.medphoto = medphoto;
}

}
