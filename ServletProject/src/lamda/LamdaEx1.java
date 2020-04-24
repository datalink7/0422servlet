package lamda;

@FunctionalInterface	//단 한개의 추상메서드만 가능 (람다식)
interface Apple1
{
	public void write();
}
public class LamdaEx1 {

	public static void main(String[] args) {
		//인터페이스 Apple1 을 구현하는 익명 내부클래스
		Apple1 a1=new Apple1() {
			
			@Override
			public void write() {
				System.out.println("익명 내부클래스의 메서드 호출");
			}
		};
		//메서드 호출
		a1.write();
		
		//위와 같은 방법을 람다식으로 구현하기
		Apple1 a2=()-> System.out.println("나는 람다식으로 표현한 write 입니다.");
		a2.write();
		
		//write 함수안에 한줄이 아니라 여러줄의 코드가 필요할 경우
		Apple1 a3=() -> {
			System.out.println("안녕하세요. 람다입니다.");
			System.out.println("여러줄 코딩입니다.");
		};
		a3.write();
	}

}
