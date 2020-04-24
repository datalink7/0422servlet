package lamda;

@FunctionalInterface
interface Apple2{
	public int sum(int a, int b);
}
public class LamdaEx2 {

	public static void main(String[] args) {
		//우리가 알고 있는 익명 내부클래스 형식
		Apple2 a1=new Apple2() {
			
			@Override
			public int sum(int a, int b) {
				return a+b;
			}
		};
		//호출
		System.out.println(a1.sum(5, 10));
		
		//람다식
		Apple2 a2=(a,b)->{
			return a+b;
		};
		System.out.println(a2.sum(3, 4));
		
		//람다식
				Apple2 a3=(a,b)-> a+b;	//한줄일 경우 중괄호 생략시 자동 리턴
				System.out.println(a3.sum(1, 2));
	}

}
