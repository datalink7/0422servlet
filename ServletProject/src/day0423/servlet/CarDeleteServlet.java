package day0423.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.setting.MyCarDao;

/**
 * Servlet implementation class CarDeleteServlet
 */
@WebServlet("/car/delete")
public class CarDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//num,pageNum
		String num=request.getParameter("num");
		String pageNum=request.getParameter("pageNum");
		
		//dao
		MyCarDao dao=new MyCarDao();
		
		//method
		dao.deleteCar(num);
		
		//redirect
		response.sendRedirect("list?pageNum="+pageNum);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
