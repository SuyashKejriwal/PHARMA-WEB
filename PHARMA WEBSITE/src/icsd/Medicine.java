package icsd;

public class Medicine {
@Override
	public String toString() {
		return "Medicine [id=" + id + ", name=" + name + ", desc=" + desc + ", category=" + category + ", dosage="
				+ dosage + ", photo=" + photo + ", quantity=" + quantity + ", price=" + price + ", status=" + status
				+ ", largephoto=" + largephoto + "]";
	}
private String id;
private String name;
private String desc;
private String category;
private String dosage;
private String photo;
private String quantity;
private String price;
private String status;
private String largephoto;
public Medicine(String id, String name, String desc, String category, String dosage, String photo, String quantity,
		String price, String status,String largephoto) {
	super();
	this.id = id;
	this.name = name;
	this.desc = desc;
	this.category = category;
	this.dosage = dosage;
	this.photo = photo;
	this.quantity = quantity;
	this.price = price;
	this.status = status;
	this.largephoto=largephoto;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getDosage() {
	return dosage;
}
public void setDosage(String dosage) {
	this.dosage = dosage;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getLargephoto() {
	return largephoto;
}
public void setLargephoto(String largephoto) {
	this.largephoto = largephoto;
}
}
