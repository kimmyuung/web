package controller.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dao.ProductDao;

/**
 * Servlet implementation class shopadd
 */
@WebServlet("/product/shopadd")
public class shopadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shopadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int pno = Integer.parseInt(request.getParameter("pno")) ;
		String mid = request.getParameter("mid");
		
		int result = ProductDao.getproductDao().saveplike(pno, MemberDao.getmemberDao().getmno(mid));
		if(result == 1) {
			response.getWriter().print(1);
		}
		else if(result == 2) {
			response.getWriter().print(2);
		}
		else if(result == 3) {
			response.getWriter().print(3);
		}
		else {
			response.getWriter().print(4);
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
