package day0423.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.setting.MyCarDao;
import mybatis.setting.MyCarDto;

/**
 * Servlet implementation class CarListservlet
 */
@WebServlet("/car/list")
public class CarListservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	//dao 선언
	MyCarDao dao=new MyCarDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int totalCount=dao.getTotalCount();
		
		//현재 페이지 읽기
		String pageNum="";
		int currentPage=0;
		
		pageNum=request.getParameter("pageNum");
		if(pageNum==null)
			currentPage=1;
		else
			currentPage=Integer.parseInt(pageNum);
		
		
		//페이징 변수 추가
		int perPage=5; //한페이지당 보여질 갯수
		int perBlock=5; //한블럭당 보여질 페이지 갯수
		int totalPage;//총 페이지수
		int startPage;//각블럭당 보여질 시작 페이지
		int endPage;//각블럭당 보여질 끝 페이지
		int start;//각 페이지당 보여질 시작 글번호(오라클은1부터,mysql은0부터)
		int end;//각 페이지당 보여질 끝 글번호
		List<MyCarDto> list=null;
		
		//총 페이지 갯수
		totalPage=totalCount/perPage+(totalCount%perPage>0?1:0);
		
		//마지막 페이지에 남은 글 한개를 삭제시 
		//그 전페이지로 가야하는 경우가 생긴다
		if(currentPage>totalPage)
			currentPage=totalPage;
		
		//시작페이지(1~5페이지는 1, 6~10 페이지는 6....)
		startPage=(currentPage-1)/perBlock*perBlock+1;
		
		//끝페이지
		endPage=startPage+perBlock-1;
		
		//endPage는 totalPage보다 크면 안됨
		if(endPage>totalPage)
			endPage=totalPage;
		
		//각페이지당 보여질 시작번호(1페이지는 1,2페이지는 4,...)
		start=(currentPage-1)*perPage+1;
		//끝번호
		end=start+perPage-1;
		//마지막 페이지는 남은 데이타 갯수만큼만
		if(end>totalCount)
			end=totalCount;
		//필요한 갯수만큼만 데이타 가져오기
		list=dao.getList(start, end);
		
		//no 계산-총 20개일경우 1페이지는 20번부터, 
		//2페이지는 15번부터..
		int no=totalCount-(currentPage-1)*perPage;
		
		//request에 저장
		request.setAttribute("totalCount",totalCount);
		request.setAttribute("list",list);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage",endPage);
		request.setAttribute("currentPage",currentPage);
		request.setAttribute("totalPage",totalPage);
		request.setAttribute("no",no);
		
		//포워드
		RequestDispatcher rd=
				request.getRequestDispatcher("../day0423/carlist.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
