package controller.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

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
		
		// 1. json 형식 문자열 통신 호출
		 String json = request.getParameter("json");
		try {
			// 1. 통신할 데이터를 JSONArray형으로 형변환 (데이터가 하나라면 쓰지 않아도 됨)
			JSONArray jsonArray = new JSONArray(json);
			// 2. 반복문 이용한 jsonarray에서 jsonobject 호출
			for(int i = 0; i < jsonArray.length(); i++) {
				// 3. jsonarray 배열내 i번째 객체 호출
				JSONObject jsonObject = jsonArray.getJSONObject(i);
				// 4. 해당 객체에 키를 이용한 값 호출
				System.out.println( jsonObject.get("pname") );
			}
		}catch(Exception e) {e.printStackTrace();}
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
