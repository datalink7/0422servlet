package servlet.test;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.data.CarDto;

/**
 * Servlet implementation class ServletCar
 */
@WebServlet("/car/info/mycar.do")
public class ServletCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<CarDto> list=new Vector<CarDto>();
		list.add(new CarDto("람보르기니",300000000,"orange",new Date()));
		list.add(new CarDto("아우디",80000000,"gray",new Date()));
		list.add(new CarDto("벤츠",100000000,"white",new Date()));
		list.add(new CarDto("포르쉐",150000000,"red",new Date()));
		list.add(new CarDto("페라리",200000000,"blue",new Date()));
		
		//request 에 저장하기
		request.setAttribute("list", list);
		//carresult.jsp 로 포워드
		RequestDispatcher rd=request.getRequestDispatcher("../../day0422/carresult.jsp");
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
