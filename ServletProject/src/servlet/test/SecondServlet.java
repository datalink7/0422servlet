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

import test.data.SawonDto;

/**
 * Servlet implementation class SecondServlet
 */
@WebServlet("/samsung/insabu/sawon.do")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<SawonDto> list=new Vector<SawonDto>();
		list.add(new SawonDto("임영웅","사원",5670000, new Date()));
		list.add(new SawonDto("찬또배기","인턴",2340000, new Date()));
		list.add(new SawonDto("영탁","대리",6500000, new Date(1989-1900,11-1,20)));	//년도는 -1900 을 줘한다. 빼지 않으면 더해져서 나옴
		//list.add(new SawonDto("영탁","대리",6500000, new Date(89,10,20)));
		list.add(new SawonDto("김희재","사원",3500000, new Date(2018-1900,3-1,5)));	//월은 -1
		list.add(new SawonDto("장민호","이사",7900000, new Date(2010-1900,2-1,13)));
		
		//request 에 저장하기
		request.setAttribute("list", list);
		//SecondResult.jsp 로 포워드
		RequestDispatcher rd=request.getRequestDispatcher("../../day0422/SecondResult.jsp");
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
