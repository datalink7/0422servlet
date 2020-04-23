package day0423.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.setting.MyCarDao;
import mybatis.setting.MyCarDto;

/**
 * Servlet implementation class CarDetailServlet
 */
@WebServlet("/car/detail")
public class CarDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//num,pageNum 읽기
		String num=request.getParameter("num");
		String pageNum=request.getParameter("pageNum");
		
		//dao선언
		MyCarDao dao=new MyCarDao();
		
		//dto얻기
		MyCarDto dto=dao.getData(num);
		
		//request 에 저장
		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		
		//포워드
		RequestDispatcher rd=
				request.getRequestDispatcher("../day0423/cardetail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
