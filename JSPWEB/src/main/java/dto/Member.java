package dto;

import java.time.LocalDateTime;

public class Member {
private int mno;
private String mid;
private String mpw;
private String mname;
private String mphone;
private String memail;
private String maddress;
private int mpoint;
private LocalDateTime mdate;

Member() {}


public Member(int mno, String mid, String mpw, String mname, String mphone, String memail, String maddress) {
	super();
	this.mno = mno;
	this.mid = mid;
	this.mpw = mpw;
	this.mname = mname;
	this.mphone = mphone;
	this.memail = memail;
	this.maddress = maddress;
}

public Member(int mno, String mid, String mpw, String mname, String mphone, String memail, String maddress, int mpoint,
		LocalDateTime mdate) {
	super();
	this.mno = mno;
	this.mid = mid;
	this.mpw = mpw;
	this.mname = mname;
	this.mphone = mphone;
	this.memail = memail;
	this.maddress = maddress;
	this.mpoint = mpoint;
	this.mdate = mdate;
}


public int getMno() {
	return mno;
}


public void setMno(int mno) {
	this.mno = mno;
}


public String getMid() {
	return mid;
}


public void setMid(String mid) {
	this.mid = mid;
}


public String getMpw() {
	return mpw;
}


public void setMpw(String mpw) {
	this.mpw = mpw;
}


public String getMname() {
	return mname;
}


public void setMname(String mname) {
	this.mname = mname;
}


public String getMphone() {
	return mphone;
}


public void setMphone(String mphone) {
	this.mphone = mphone;
}


public String getMemail() {
	return memail;
}


public void setMemail(String memail) {
	this.memail = memail;
}


public String getMaddress() {
	return maddress;
}


public void setMaddress(String maddress) {
	this.maddress = maddress;
}


public int getMpoint() {
	return mpoint;
}


public void setMpoint(int mpoint) {
	this.mpoint = mpoint;
}


public LocalDateTime getMdate() {
	return mdate;
}


public void setMdate(LocalDateTime mdate) {
	this.mdate = mdate;
}


}
