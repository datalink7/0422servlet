package day0423.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.setting.MyCarDao;
import mybatis.setting.MyCarDto;


@WebServlet("/car/update")
public class CarUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//엔코딩
		request.setCharacterEncoding("utf-8");

		//데이타 읽기
		String pageNum=request.getParameter("pageNum");
		
		String num=request.getParameter("num");
		String name=request.getParameter("name");
		String carname=request.getParameter("carname");
		String carcolor=request.getParameter("carcolor");
		String carguipday=request.getParameter("carguipday");
		int carprice=Integer.parseInt(request.getParameter("carprice"));

		//dto에 넣기
		MyCarDto dto=new MyCarDto();
		dto.setNum(num);
		dto.setName(name);
		dto.setCarcolor(carcolor);
		dto.setCarguipday(carguipday);
		dto.setCarname(carname);
		dto.setCarprice(carprice);		

		//dao 메서드 호출
		MyCarDao dao=new MyCarDao();
		dao.updateCar(dto);

		//리다이렉트
		response.sendRedirect("detail?num="+num+"&pageNum="+pageNum);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
