package com.study.controller;

import com.study.domain.MyBean411;
import com.study.domain.MyBean412;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/main42")
public class Controller42 {

	@GetMapping("/sub1")
	@ResponseBody //없으면 viewResolver가 찾아서 view를 찾아감
	public String method1() {

		return "some data";
	}

	@GetMapping("/sub2")
	@ResponseBody
	public String method2() {
		double random = Math.random();
		if (random < 1.0 / 3) {
			return "가위";
		} else if (random < 2.0 / 3) {
			return "바위";
		} else {
			return "보";
		}
	}

	@GetMapping("/sub3")
	@ResponseBody
	public Map<String, Object> method3() {

		return Map.of("name", "son", "age", 33,
						"married", false, "info, ", Map.of("height", 180, "weight", 70, "bloodType", "A"), "hobby", List.of("reading", "movie", "music"));
	}

	@GetMapping("/sub4")
	@ResponseBody
	public List<Map<String, Object>> method4() {
		return List.of(Map.of("name", "son", "age", 33),
						Map.of("name", "lee", "age", 44));
	}

	@GetMapping("/sub5")
	@ResponseBody
	public MyBean411 method5() {
		MyBean411 myBean411 = new MyBean411();
		myBean411.setName("son");
		myBean411.setAge(33);
		return myBean411;
	}

	@GetMapping("/sub6")
	@ResponseBody
	public MyBean412 method6() {
		MyBean412 myBean412 = new MyBean412();
		myBean412.setMenu(List.of("감자", "고구마"));
		myBean412.setPrice(Map.of("감자", 1000, "고구마", 2000));
		myBean412.setDish(new String[]{"짜장면", "짬뽕"});
		return myBean412;
	}
}