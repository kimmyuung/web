package dao;

import java.util.ArrayList;

import dto.Board;

public class BoardDao extends Dao{

	public BoardDao() {
		super(); // 부모클래스 생성자 호출 
	}
	public static BoardDao boardDao = new BoardDao(); 		// dao 호출시 반복되는 new 연산자 제거 
	public static BoardDao getboardDao() { return boardDao; } 
	
	// 게시물 목록 출력
	public ArrayList<Board> load() {
		ArrayList<Board> blist = new ArrayList<>();
		String sql = "select * from board";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				Board boar = new Board(
						rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)
						);
				blist.add(boar);
				return blist;
			}		
		}catch(Exception e) {System.out.println("게시물들 불러오기 실패" + e);}
		
		return null;
	} 
	public Board getboard() {
		String sql = "select * from board where bno = ?";
		try {
			ps = con.prepareStatement(sql);
			//ps.setInt(1, bno);
			rs = ps.executeQuery();
			if(rs.next()) {
				Board boar = new Board(
						rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7)
						);
				return boar;
			}		
		}catch(Exception e) {System.out.println("게시물들 불러오기 실패" + e);}
		
		return null;
	}
	public boolean write(Board board) {
		String sql ="insert into member(bno, btitle, bcontent, bwriter, bfile) "
				+ "value(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt( 1 , board.getBno() ); 		ps.setString( 2 , board.getBtitle() ); 
			ps.setString( 3 , board.getBcontent() );	ps.setInt( 4 , board.getBwriter() ); 
			ps.setString( 5 , board.getBfile());
			ps.executeUpdate(); return true;
		}catch (Exception e) {} return false;
		}
	
	public boolean update(int bno) {return false;}
	
	public boolean delete(int bno) {return false;}
	
	public boolean increview(int bno) {return false;}
	
	public boolean replywrite(Board board) {return false;}
	public boolean replylist(Board board) {return false;}
	public boolean replyupdate(Board board) {return false;}
	public boolean replydelete(Board board) {return false;}
}
