package dto;

public class Member {
	
	private int mnum;
	private String mid;
	private String mpw;
	private String mname;
	public Member() {}
	
	public Member(int mnum, String mid, String mpw, String mname) {
		super();
		this.mnum = mnum;
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
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
	
	
}
