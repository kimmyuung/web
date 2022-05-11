package dao;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import dto.Chat;

public class ChatDao extends Dao{

	public ChatDao() {
		super(); // 슈퍼클래스 호출 ( db연동 )
			// super.메소드()  super.필드명	   super() : 생성자
	}
	public static ChatDao ChatDao = new ChatDao();
	public static ChatDao getChatDao() { return ChatDao; }
	
	public ArrayList<Chat> clist () {
		ArrayList<Chat> clist = new ArrayList<Chat>();
		String nowtime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
		String sql = "select * from chat where cdate > ? order by cdate";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, nowtime);
			rs = ps.executeQuery();
			while(rs.next()) {
				Chat chat = new Chat(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				clist.add(chat);
			}
			return clist;
		}catch(Exception e) {e.printStackTrace();}
		return null;
	}
	
	public int chat_result(String cname, String ccontent) {
		String sql = "insert into chat(cname, ccontent) values(?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, cname);
			ps.setString(2, ccontent);
			ps.executeUpdate();
			return 1;
			}catch(Exception e) {e.printStackTrace(); }
		return 2;
	}
}
