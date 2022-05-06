package dto;

public class Board {
private int bno;
private String btitle;
private String bcontent;
private int bwriter;
private int bview;
private String bdate;
private String bfile;


@Override
public String toString() {
	return "Board [bno=" + bno + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bwriter=" + bwriter + ", bview="
			+ bview + ", bdate=" + bdate + ", bfile=" + bfile + "]";
}

public Board() {}
public Board(int bno, String btitle, String bcontent, int bwriter, int bview, String bdate, String bfile) {
	super();
	this.bno = bno;
	this.btitle = btitle;
	this.bcontent = bcontent;
	this.bwriter = bwriter;
	this.bview = bview;
	this.bdate = bdate;
	this.bfile = bfile;
}
public int getBno() {
	return bno;
}
public void setBno(int bno) {
	this.bno = bno;
}
public String getBtitle() {
	return btitle;
}
public void setBtitle(String btitle) {
	this.btitle = btitle;
}
public String getBcontent() {
	return bcontent;
}
public void setBcontent(String bcontent) {
	this.bcontent = bcontent;
}
public int getBwriter() {
	return bwriter;
}
public void setBwriter(int bwriter) {
	this.bwriter = bwriter;
}
public int getBview() {
	return bview;
}
public void setBview(int bview) {
	this.bview = bview;
}
public String getBdate() {
	return bdate;
}
public void setBdate(String bdate) {
	this.bdate = bdate;
}
public String getBfile() {
	return bfile;
}
public void setBfile(String bfile) {
	this.bfile = bfile;
}


}
