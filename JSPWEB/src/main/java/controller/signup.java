package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.Member;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public signup() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("UTF-8"); // 요청시 사용되는 인코딩타입 [ 한글 ]
		String mid = request.getParameter("mid"); // 데이터 요청 
		String mpw = request.getParameter("mpw"); // 데이터 요청 
		String mname = request.getParameter("mname"); // 데이터 요청 
		String memail = request.getParameter("memail"); // 데이터 요청 
		String mphone = request.getParameter("mphone"); // 데이터 요청 
		String maddress = request.getParameter("address"); // 데이터 요청
		Member member = new Member(0, mid, mpw, mname, mphone, memail, maddress);
		boolean result = MemberDao.getMemberDao().signup(member);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
