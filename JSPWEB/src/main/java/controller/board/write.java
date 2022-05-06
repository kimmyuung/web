package controller.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDao;
import dao.MemberDao;
import dto.Board;

/**
 * Servlet implementation class boardwrite
 */
@WebServlet("/board/write")
public class write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public write() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 저장 경로
		String uploadpath = "C:\\Users\\504\\git\\web\\JSPWEB\\src\\main\\webapp\\board\\upload";
		MultipartRequest multi = new MultipartRequest(
				request, // 요청방식
				uploadpath, // 파일 저장 경로
				1024*1024*10, // 파일 최대 용량 허용 범위
				"UTF-8",  // 인코딩 타입
				new DefaultFileRenamePolicy() // 동일한 파일명이 있을 경우 자동으로 이름 변환
				);
		
		
		request.setCharacterEncoding("UTF-8");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bfile = request.getParameter("bfile");
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("login");
		int mno = MemberDao.getmemberDao().getmno(mid);
		
		// 객체화
		Board board = new Board(0 , btitle, bcontent, mno, 0, null, null);
		// db 처리
		boolean result = BoardDao.getboardDao().write(board);
		if(result) {response.sendRedirect("JSPWEB/board/boardlist.jsp");}
		if(result) {response.sendRedirect("JSPWEB/board/boardwrite.jsp");}
		
		
		doGet(request, response);
	}

}
