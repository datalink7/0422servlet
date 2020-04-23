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
 * Servlet implementation class CarInsertServlet
 */
@WebServlet("/car/insert")
public class CarInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//엔코딩
		request.setCharacterEncoding("utf-8");
		
		//데이터 읽기
		String name=request.getParameter("name");
		String carname=request.getParameter("carname");
		String carcolor=request.getParameter("carcolor");
		String carguipday=request.getParameter("carguipday");
		int carprice=Integer.parseInt(request.getParameter("carprice"));
		
		//dto에 넣기
		MyCarDto dto=new MyCarDto();
		dto.setName(name);
		dto.setCarcolor(carcolor);
		dto.setCarguipday(carguipday);
		dto.setCarname(carname);
		dto.setCarprice(carprice);
		
		//dao 메소드 호출
		MyCarDao dao=new MyCarDao();
		dao.insertCar(dto);
		
		//request에 데이터 저장
		request.setAttribute("carname", carname);
		request.setAttribute("name", name);
		
		//포워드
//		RequestDispatcher rd=request.getRequestDispatcher("../day0423/carinsert.jsp");
//		rd.forward(request, response);
		
		//리다이렉트
		response.sendRedirect("list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
