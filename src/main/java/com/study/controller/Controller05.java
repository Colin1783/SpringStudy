package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main5")
public class Controller05 {

	@RequestMapping("sub1")
	public void method1(@RequestParam("city") String param1) {
		System.out.println(param1 + "검색 로직 실행");
	}

	@RequestMapping("sub2")
	public void method2(@RequestParam("address") String param) {
		System.out.println(param + "(으)로 가는 경로 탐색");
	}

	@RequestMapping("sub3")
	public void method3(@RequestParam("age") Integer param) {
		if (param < 18) {
			System.out.println("청소년 관련 정보 출력");
		} else if (param < 35) {
			System.out.println("청년 관련 정보 출력");
		} else if (param < 65) {
			System.out.println("중장년 관련 정보 출력");
		} else {
			System.out.println("노년 관련 정보 출력");
		}
	}

	@RequestMapping("sub4")
	public void method4(@RequestParam("height") Double param) {
		if (param < 145.0) {
			System.out.println("꼬마");
		} else if (param < 180.0) {
			System.out.println("정상인");
		} else {
			System.out.println("거인");
		}
	}
}
