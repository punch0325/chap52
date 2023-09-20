package util;


// VT100에 잘못 된 데이터가 들어갈 때 Exception을 발생시키려는 목적의 클래스를 생성해보자 !
public class InvalidCursorException extends RuntimeException{
	

	public InvalidCursorException() {
		super("부정확한 Cursor 값입니다.");
		// 디폴트 생성자
	}
	
	public InvalidCursorException(String msg) {
		super(msg);
		// msg를 받아서 출력하는 생성자
	}
	
	

}
