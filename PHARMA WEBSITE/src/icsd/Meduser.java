package icsd;

import java.math.BigDecimal;

public class Meduser {
private String firstname;
private String lastname;
private String emailid;
private String password;
private Integer age;
private String mobileno;
private String gender;
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Integer getAge() {
	return age;
}
public void setAge(Integer age) {
	this.age = age;
}
public String getMobileno() {
	return mobileno;
}
public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Meduser(String firstname, String lastname, String emailid, String password, Integer age, String mobileno,
		String gender) {
	super();
	this.firstname = firstname;
	this.lastname = lastname;
	this.emailid = emailid;
	this.password = password;
	this.age = age;
	this.mobileno = mobileno;
	this.gender = gender;
}

}
