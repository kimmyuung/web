package controller.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChatDao;
import dto.Chat;

/**
 * Servlet implementation class chatting
 */
@WebServlet("/chatting")
public class chatting extends HttpServlet {
	public static ArrayList<Chat> clist = ChatDao.getChatDao().clist();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String ccontent = request.getParameter("chatContent");
		String cname = request.getParameter("chatName");
		int result = ChatDao.getChatDao().chat_result(cname, ccontent);
		if (result == 1){
			response.sendRedirect("JSPWEB/train/chat.jsp");
		}
		else {
			response.sendRedirect("JSPWEB/error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
