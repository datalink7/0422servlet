package lamda;

import java.util.Calendar;

@FunctionalInterface
interface Apple3{
	public String info(String name, int birth);
}
public class LamdaEx3 {

	public static void main(String[] args) {
		Apple3 a1=new Apple3() {
			
			@Override
			public String info(String name, int birth) {
				//현재 년도 얻기
				int currYear=Calendar.getInstance().get(Calendar.YEAR);
				//나이 계산
				int age=currYear-birth+1;
				String s=name+"님은 "+age+"세 입니다.";
				return s;
			}
		}; 
		//호출
		System.out.println(a1.info("임영웅", 1989));
		
		Apple3 a2=(name,birth)->{
			//현재 년도 얻기
			int currYear=Calendar.getInstance().get(Calendar.YEAR);
			//나이 계산
			int age=currYear-birth+1;
			String s=name+"님은 "+age+"세 입니다.";
			return s;
			
		};
		System.out.println(a1.info("강호동", 2000));
	}

}
