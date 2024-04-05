package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.util.Iterator;

@Controller
@RequestMapping("main4")
public class Controller04 {

	// main4/sub1
	// main4/sub1?아무파라미터
	@RequestMapping("sub1")
	public void sub1(WebRequest request) {
		Iterator<String> names = request.getParameterNames();
		while (names.hasNext()) {
			String name = names.next();
			String value = request.getParameter(name);
			System.out.println(name + " : " + value);
		}
		System.out.println("Controller4.sub1");
	}

	@RequestMapping("sub2")
	public void sub2(WebRequest request) {
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String age = request.getParameter("age");

		System.out.println("city : " + city);
		System.out.println("country : " + country);
		System.out.println("Controller4.sub2");
	}

	@RequestMapping("sub3")
	public void sub3(WebRequest request) {
		String value = request.getParameter("query");
		if (value != null) {
			System.out.println(value + "검색하기 로직 실행");
			System.out.println("검색 결과 응답하기");
		}
	}

	// main4/sub4?city=seoul
// main4/sub4?city=tokyo
// main4/sub4?city=london
	@RequestMapping("sub4")
	public void sub4(WebRequest request) {
		String value = request.getParameter("query");
		if (value != null) {
			switch (value) {
				case "seoul" -> System.out.println("서울은 대한민국의 수도입니다.");
				case "tokyo" -> System.out.println("도쿄는 일본의 수도입니다.");
				case "london" -> System.out.println("런던은 영국의 수도입니다.");
			}
		}
	}

	@RequestMapping("sub5")
	public void sub5(WebRequest request) {
		String value = request.getParameter("age");
		int age = Integer.parseInt(value);

		if (age < 13) {
			System.out.println("유아용 정보 검색");
		} else if (age < 19) {
			System.out.println("청소년용 정보 검색");
		} else {
			System.out.println("성인용 정보 검색");
		}
	}

	@RequestMapping("sub6")
	public void sub6(WebRequest request) {
		String value = request.getParameter("weight");
		double weight = Double.parseDouble(value);

		if (weight < 50.0) {
			System.out.println("저체중");
		} else if (weight < 90.0) {
			System.out.println("평균");
		} else {
			System.out.println("과체중");
		}
	}
}
