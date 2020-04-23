package mybatis.setting;

import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import org.apache.ibatis.session.SqlSession;

import com.sun.xml.internal.ws.Closeable;

public class MyCarDao {
	ConnectionManager manager=ConnectionManager.getInstance();
	SqlSession session;
	
	private SqlSession getSession()
	{
		session=manager.openSession();
		return session;
	}
	
	//메서드들
	//총 갯수 구하는 메서드
	public int getTotalCount()
	{
		session=getSession();
		int n=session.selectOne("car.totalcountofcar"); //car namespace 는 생략가능
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
	public List<MyCarDto> getList(int start, int end)
	{
		List<MyCarDto> list=new Vector<MyCarDto>();
		session=getSession();
		//보내는 데이터는 무조건 하나로 묶어서 보내야한다.
		//dto가 아닌경우 주로 map 으로 묶는다.
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		
		list=session.selectList("selectPagingOfcar", map);
		session.close();
		return list;
	}
	
	//게시글 클릭 시 데이터 불러오기
	public MyCarDto getData(String num)
	{
		session=getSession();
		MyCarDto dto=session.selectOne("selectByNumOfCar", num);
		session.close();
		return dto;
	}
}
