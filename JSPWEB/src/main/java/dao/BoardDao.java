package dao;

import java.util.ArrayList;

import dto.Board;

public class BoardDao extends Dao {
	
	public BoardDao() {
		super(); // 슈퍼클래스 호출 ( db연동 )
			// super.메소드()  super.필드명	   super() : 생성자
	}
	public static BoardDao boardDao = new BoardDao();
	public static BoardDao getBoardDao() { return boardDao; }
	
	// 1. 게시물 쓰기 메소드 	[ 인수 : 작성된 데이터들 = dto  ]
	public boolean write( Board board ) { 
	
		String sql = "insert into board( btitle , bcontent , mno , bfile, mid )values(?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , board.getBtitle() );	ps.setString( 2 , board.getBcontent() );
			ps.setInt( 3 , board.getMno() );		ps.setString( 4 , board.getBfile() );
			ps.setString(5, board.getMid());
			ps.executeUpdate(); return true;
		}catch (Exception e) { System.out.println( e ); }	return false; 
	}
	// 2. 모든 게시물 출력 메소드 [ 인수 : x  // 추후기능 = 검색 : 조건 ]
	public ArrayList<Board> getboardlist() { 
		ArrayList<Board> boardlist = new ArrayList<Board>();
		// 내림차순 
		String sql = "select * from board order by bno desc";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while( rs.next() ) {
				Board board = new Board( 
						rs.getInt(1),rs.getString(2), 
						rs.getString(3),rs.getInt(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getString(8) );
				boardlist.add(board);
			}
			return boardlist;
		}catch (Exception e) { System.out.println( e );} return null; 
		
	}
	// 3. 개별 게시물 출력 메소드 [ 인수 : 게시물번호 ]
	public Board getboard(int bno) { 
		String sql = "select * from board where bno=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno);
			rs = ps.executeQuery();
			if(rs.next()) {
				Board board = new Board ( 	rs.getInt(1), rs.getString(2), 
						rs.getString(3),	rs.getInt(4),
						rs.getString(5), 	rs.getInt(6),
						rs.getString(7), 	null );
				return board;
			}
		}catch(Exception e) {System.out.println("개별 게시물 출력 실패" + e);}
		
		return null; }
	// 4. 게시물 수정 메소드 	[ 인수 : 수정할 게시물번호  / 수정된 내용 ]
	public boolean update( Board board ) { 
		try {
		String sql ="update board set btitle=? ,  bcontent=? , bfile=? where bno = ?";
					ps = con.prepareStatement(sql);
					ps.setString( 1 , board.getBtitle() );
					ps.setString( 2 , board.getBcontent() );
					ps.setString( 3 , board.getBfile() );
					ps.setInt(4, board.getBno());
				ps.executeUpdate(); return true;
				}catch (Exception e) {} return false;
	}
	// 5. 게시물 삭제 메소드 	[ 인수 : 삭제할 게시물번호 
	public boolean delete( int bno ) { 
		String sql = "delete from board where bno="+bno;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			return true;
		}catch(Exception e) {System.out.println(e);}
		
		return false; 
		}
	// 6. 게시물 조회 증가 메소드 	[ 인수 : 증가할 게시물번호 ]
	public boolean increview( int bno ) { 
		String sql = "update board set bview = bview+1 where bno =?";
		try {ps = con.prepareStatement(sql); ps.setInt(1, bno);
		ps.executeUpdate();
		return true;
		}catch(Exception e){System.out.println("게시물 조회 증가 실패" + e);}
		return false;
		}
	// 7. 댓글 작성 메소드 		[ 인수 : 작성된 데이터들 = dto ]
	public boolean replywrite() { return false; }
	// 8. 댓글 출력 메소드 		[ 인수 : x ]
	public boolean replylist() { return false; }
	// 9. 댓글 수정 메소드 		[ 인수 : 수정할 댓글 번호 ]
	public boolean replyupdate() { return false; }
	// 10. 댓글 삭제 메소드 		[ 인수 : 삭제할 댓글 번호 ] 
	public boolean replydelete() { return false; }
	// 11. 게시물 번호 출력 메소드
	public boolean getbnum() {
		return false;
	}
	public boolean filedelete(int bno) {
		String sql = "update board set bfile = null where bno = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno);
			ps.executeUpdate();
			return true;
		}catch(Exception e) {System.out.println("파일 지우기 오류 " + e);}
		return false;
	}
	
}
