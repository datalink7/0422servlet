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
 
	//dao ����
	MyCarDao dao=new MyCarDao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int totalCount=dao.getTotalCount();
		
		//���� ������ �б�
		String pageNum="";
		int currentPage=0;
		
		pageNum=request.getParameter("pageNum");
		if(pageNum==null)
			currentPage=1;
		else
			currentPage=Integer.parseInt(pageNum);
		
		
		//����¡ ���� �߰�
		int perPage=5; //���������� ������ ����
		int perBlock=5; //�Ѻ��� ������ ������ ����
		int totalPage;//�� ��������
		int startPage;//������ ������ ���� ������
		int endPage;//������ ������ �� ������
		int start;//�� �������� ������ ���� �۹�ȣ(����Ŭ��1����,mysql��0����)
		int end;//�� �������� ������ �� �۹�ȣ
		List<MyCarDto> list=null;
		
		//�� ������ ����
		totalPage=totalCount/perPage+(totalCount%perPage>0?1:0);
		
		//������ �������� ���� �� �Ѱ��� ������ 
		//�� ���������� �����ϴ� ��찡 �����
		if(currentPage>totalPage)
			currentPage=totalPage;
		
		//����������(1~5�������� 1, 6~10 �������� 6....)
		startPage=(currentPage-1)/perBlock*perBlock+1;
		
		//��������
		endPage=startPage+perBlock-1;
		
		//endPage�� totalPage���� ũ�� �ȵ�
		if(endPage>totalPage)
			endPage=totalPage;
		
		//���������� ������ ���۹�ȣ(1�������� 1,2�������� 4,...)
		start=(currentPage-1)*perPage+1;
		//����ȣ
		end=start+perPage-1;
		//������ �������� ���� ����Ÿ ������ŭ��
		if(end>totalCount)
			end=totalCount;
		//�ʿ��� ������ŭ�� ����Ÿ ��������
		list=dao.getList(start, end);
		
		//no ���-�� 20���ϰ�� 1�������� 20������, 
		//2�������� 15������..
		int no=totalCount-(currentPage-1)*perPage;
		
		//request�� ����
		request.setAttribute("totalCount",totalCount);
		request.setAttribute("list",list);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage",endPage);
		request.setAttribute("totalPage",totalPage);
		request.setAttribute("currentPage",currentPage);		
		request.setAttribute("no",no);
		
		//������
		RequestDispatcher rd=
				request.getRequestDispatcher("../day0423/carlist.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}



