import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

public class ArrayListExample {

	public static void main(String[] args) {
		
		//String[] str = new String[100];
		
		List<String> list = new ArrayList<>();
		
		String str1 = "짜장면";
		//list에 객체를 추가하는 메서드 : add(객체)
		list.add(str1);
		list.add("치킨");
		list.add("삼겹살");
		list.add("피자");
		list.add("치킨"); //list는 객체의 중복 저장을 허용한다.
		System.out.println(list);
		
		//list의 객체를 삽입(지정한 위치에) : add(index, 객체) 해당 인덱스에 객체를 삽입
		list.add(2, "아이스크림");
		System.out.println(list);
		
		//list의 크기(저장된 객체의 수 얻기) : size()
		System.out.println("list에 저장된 객체의 수: "+list.size());
		
		//list에 저장된 객체 얻기 : get(index)
		String food = list.get(4);
		System.out.println("4번 인덱스의 값: " + food);
		
		//list내부에 저장된 객체의 존재 유무를 파악: contains(객체)
		System.out.println(list.contains("탕수육"));
		
		System.out.println("---------------------------");
		
		//list의 반복문 처리
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
		}
		
		System.out.println("---------------------------");
		
		//list의 향상된 for문 (forEach) ctrl+space foreach추가
		//전체 요소를 사용할 때만 사용
		for (String name : list) {
			System.out.println(name);
		}
		
		//list의 내부 객체를 삭제:remove(index), remove(객체)
		list.remove(3);
		System.out.println(list);
		list.remove("아이스크림");
		System.out.println(list);
		
		//list 내부 객체의 인덱스 확인: indexOf(객체)
		int idx = list.indexOf("짜장면");
		System.out.println("짜장면의 인덱스 : " + idx);	
		
		//list 내부 객체 전체 삭제 : clear();
		list.clear();
		System.out.println(list);
		
		//list의 정렬
		List<Integer> scores = new ArrayList<>();
		
		scores.add(95);
		scores.add(55);
		scores.add(65);
		scores.add(75);
		scores.add(85);
		scores.add(68);
		
		System.out.println(scores);
		
		//오름차 정렬
		Collections.sort(scores);
		System.out.println(scores);
		
		//내림차 정렬
		Collections.sort(scores, Collections.reverseOrder());
		System.out.println(scores);
	}

}
