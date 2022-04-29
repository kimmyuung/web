package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Board;
import dto.Member;

public class MemberDao {
	private Connection con; // db연결 클래스
	private PreparedStatement ps; // db조작 인터페이스
	private ResultSet rs;
	// jdbc
	// 1. 프로젝트내 build path 에 mysqljbc.jar 추가
	// 2. 프로젝트내 webapp -> web-inf-lib -> mysqljbc.jar 추가

	// 1. drive
	public MemberDao() {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_web?serverTimezone=UTC",
				"root","1234");
		}catch(Exception e) {System.out.println("Database connection error!" + e);}
	}
	
	public boolean signup(Member member) { // 회원가입
		try {
		String sql = "insert into member(mid, mpw, mname) values(?,?,?);";
		ps = con.prepareStatement(sql);
		ps.setString(1, member.getMid());
		ps.setString(2, member.getMpw());
		ps.setString(3, member.getMname());
		ps.executeUpdate();
		return true;
		}catch(Exception e) {System.out.println("등록 실패!" + e);}
		return false;
	}
	
	public boolean login(String id, String pw) {
		try {
			String sql = "select * from member where mid= ? and mpw= ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();   

			if( rs.next() ) {  
				return true; 
			}
		}
		catch(Exception e) {System.out.println("로그인 실패!" + e);}
		return false;
	}
	
	public boolean delete(String id) {
		try {
			String sql = "delete from member where mid = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			return true;
		}catch (Exception e) {
			System.out.println("삭제 오류 :" + e);
		}
		return false;
	}
	public boolean write(Board board) {
		String sql = "insert into board(btitle, bcontent, bwriter, bdate) values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getWriter());
			ps.setString(4, board.getDate());
			ps.executeUpdate();
			return true;
		}catch (Exception e) {
			System.out.println("쓰기 오류 : " + e);
		}
		return false;
	}
	public ArrayList<Board> list() {
		ArrayList<Board> blist = new ArrayList<Board>();
		String sql = "select * from board order by bnum desc"; // desc : 내림차순
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Board board = new Board(
						rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5)
						);
				blist.add(board);
			}
			return blist;
		}catch (Exception e) {
			System.out.println("list error :" + e);
		}
		return null;
	}
}
