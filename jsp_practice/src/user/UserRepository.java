package user;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {

	private static List<User> userList = new ArrayList<>();
			
	//생성된 user객체를 리스트에 추가하는 매소드
	public static void save(User user) {
		userList.add(user);
	}
	
	public static void showUsers() {
		for(User user : userList) {
			System.out.println("아이디:" + user.getAccount());
			System.out.println("비밀번호: " + user.getPassword());
			System.out.println("이름: " + user.getName());
			System.out.println("별명: " + user.getNickname());
			System.out.println("---------------------------");
		}
	}
	
	//userList 내부에 일치하는 id값을 가지고 있는 객체를 리턴해주는 메서드.
	public static User getUser(String userId) {
		for(User user : userList) {
			if(user.getAccount().equals(userId)) {
				return user;
			}
		}
		return null;
	}
	
	public static void deleteUser(String userId) {
		userList.remove(getUser(userId));
	}
}