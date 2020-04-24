package mybatis.setting;

import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import org.apache.ibatis.session.SqlSession;

public class MyCarDao {
	ConnectionManager manager=ConnectionManager.getInstance();
	SqlSession session;
	
	private SqlSession getSession()
	{
		session=manager.openSession();
		return session;
	}
	
	//�޼����
	//�� ���� ���ϴ� �޼���
	public int getTotalCount()
	{
		session=getSession();
		int n=session.selectOne("car.totalcountofcar");//car namespace �� ���� ����
		session.close();
		return n;
	}
	
	//insert
	public void insertCar(MyCarDto dto)
	{
		session=getSession();
		session.insert("insertOfCar", dto);
		session.close();
	}
	
	//select-paging
	public List<MyCarDto> getList(int start,int end)
	{
		List<MyCarDto> list=new Vector<MyCarDto>();
		session=getSession();
		//������ ����Ÿ�� ������ �ϳ��� ��� ������ �Ѵ�
		//dto �� �ƴѰ�� �ַ� map ���� ���´�
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start",start);
		map.put("end",end);
		
		list=session.selectList("selectPagingOfcar", map);
		session.close();		
		return list;
	}
	
	//dto
	public MyCarDto getData(String num)
	{
		session=getSession();
		MyCarDto dto=session.selectOne("selectByNumOfCar", num);
		session.close();
		return dto;
	}	
	
	//수정
	public void updateCar(MyCarDto dto)
	{
		session=getSession();
		session.update("updateOfCar", dto);
		session.close();
	}
	
	//삭제
	public void deleteCar(String num)
	{
		session=getSession();
		session.update("deleteOfCar", num);
		session.close();
	}
}











