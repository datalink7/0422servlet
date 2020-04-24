package lamda;

import java.util.List;
import java.util.Vector;

public class LamdaEx4 {

	public static void main(String[] args) {
		List<String> list=new Vector<String>();
		list.add("apple");
		list.add("banana");
		list.add("mango");
		list.add("orange");
		
		System.out.println("출력 방법 1 - 우리가 알고 있던 방법");
		for(String s:list)
			System.out.println(s);
		
		System.out.println("출력 방법 2 - 람다식으로 출력 - forEach");
		list.forEach(s->System.out.println(s));
	}

}
