package com.study.controller;

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
}
