package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dto.Stock;

/**
 * Servlet implementation class getstock
 */
@WebServlet("/admin/getstock")
public class getstock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getstock() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ArrayList<Stock> list = ProductDao.getproductDao().getStock();
		response.setCharacterEncoding("UTF-8");
		int pno = Integer.parseInt(request.getParameter("pno") );
		String field = request.getParameter("field");

		PrintWriter out = response.getWriter();
		String html = "";
		if(field != null && field.equals("ssize")) {
			for( Stock temp : list ) {
				if(temp.getPno() == pno) {
						html +=
						"<option value=\""+temp.getSsize()+"\">"+temp.getSsize()+"</option>";
				}
				}
		}
		else {
		for( Stock temp : list ) {
			html += 
				"<tr>" +
					"<td> "+temp.getScolor()+" <td>" +
					"<td> "+temp.getSsize()+" <td>" +
					"<td> "+temp.getSamount()+" <td>" +
					"<td> 비고 <td>" +
				"</tr>";
		}
		}
		out.print(html);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
