package util;

import java.util.Objects;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class Alpha {
	
	protected int line;
	protected int col;
	protected Color fg;
	protected Color bg;
	protected char ch;
	
	

	/*Object 클래스 메소드를 오버라이딩하여 Alpha 클래스를 업그레이드해보기*/
	@Override
	public int hashCode() {
		return Objects.hash(line,col);
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Alpha target) {
			return line==target.line && col==target.col;
		}
		return false;
	}
	
	@Override
	public String toString() {
		return "[" + line + "," + col + "," +fg+","+bg+","+ch+"]";
	}
	
	
	public Alpha() {
		line = (int)(Math.random()*20+1);
		col = (int)(Math.random()*40+1);
		
		do {			
			fg = Color.values()[(int)(Math.random()*8)];
			bg = Color.values()[(int)(Math.random()*8)];
		}while(fg==bg);
	
		
		ch = (char)(Math.random()*26 + 'A');
		

	}
	
	
	public Alpha(int line, int col) {
		super();
		this.line = line;
		this.col = col;
	}

	
//	public void show() {
//		show(1,1);
//	}
//
//	public void show(int line, int col) {
//		VT100.corsorMove(line+3, col);
//		VT100.setForeground(fg);
//		VT100.setbackground(bg);
//		VT100.printChar(ch);
//	}
//	
//	public void show2(int line, int col) {
//		VT100.corsorMove(line+3, col+45);
//		VT100.setForeground(fg);
//		VT100.setbackground(bg);
//		VT100.printChar(ch);
//	}
//
//	public void show3(int line, int col) {
//		VT100.corsorMove(line+25, col);
//		VT100.setForeground(fg);
//		VT100.setbackground(bg);
//		VT100.printChar(ch);
//	}
//	
//	public void show4(int line, int col) {
//		VT100.corsorMove(line+25, col+45);
//		VT100.setForeground(fg);
//		VT100.setbackground(bg);
//		VT100.printChar(ch);
//	}
	
}
