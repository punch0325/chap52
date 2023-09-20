package com.example.alpha;

import lombok.Getter;

@Getter
public class AlphaParam {
	String line;
	String col;
	

	public void setLine(String value) {
		System.out.println("setLine");
		if(value==null) {
			throw new RuntimeException("line값이 없습니다(null).");
		}
		if(value.trim()=="") {
			System.out.println("욍");
			throw new RuntimeException("line값이 입력되지 않았습니다.");
		}
		int line;
		try {			
			line =  Integer.parseInt(value);
		} catch (Exception e) {
			System.out.println("왕");
			throw new RuntimeException("line값이 숫자가 아닙니다. line = "+value);
		}
		if(line < 0 || line > 100) {
			System.out.println("헐");
			throw new RuntimeException("line값은 0 ~ 100 입니다.");
		}
		this.line = value;
	}
	
	
	public void setCol(String value) {
		if(value==null) {
			throw new RuntimeException("col값이 없습니다(null).");
		}
		if(value.trim()==" ") {
			throw new RuntimeException("col값이 입력되지 않았습니다.");
		}
		int col;
		try {			
			col = Integer.parseInt(value);
		} catch (Exception e) {
			throw new RuntimeException("col값이 숫자가 아닙니다. col = "+value);
		}
		if(col < 0 || col > 100) {
			throw new RuntimeException("col값은 0 ~ 100 입니다.");
		}
		this.col = value;
	}
	
	
}
