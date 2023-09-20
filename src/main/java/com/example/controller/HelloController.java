package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/* 클라이언트(사용자,웹)의 요청을 받는 역할 */
@Controller
public class HelloController {
	
	@GetMapping("/hello1") /* 클라이언트가 들어올 경로(url)를 지정해주어야 아래의 메소드가 실행 됨 */
	String hello1() {
		System.out.println("MVC Pattern + hello1");
		return "hello1"; /*View(jsp파일)의 이름을 retrun해줌 즉, View를 호출*/
	}
	
	@GetMapping("/hello2")
	String hello2() {
		System.out.println("MVC Pattern + hello2");
		return "hello2";
	}

}

