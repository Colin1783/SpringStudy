package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main8")
public class Controller08 {
	@RequestMapping("sub1")
	public void main(Model model) {
		model.addAttribute("name1", "value1");
		model.addAttribute("name2", "value2");
	}

	@RequestMapping("sub2")
	public void sub2(Model model) {
		model.addAttribute("city", "서울");
		model.addAttribute("address", "서대문구 신촌로");
	}

	@RequestMapping("sub3")
	public void sub3(Model model) {
		model.addAttribute("name", "홍길동");
		model.addAttribute("age", "null");
	}

	@RequestMapping("sub4")
	public void sub4(Model model) {
		model.addAttribute("car", new String[]{"Tesla", "Kia", "Hyundai"});
	}

	@RequestMapping("sub5")
	public void sub5(Model model) {
		model.addAttribute("cities", new String[]{"서울", "뉴욕", "나이로비"});
		model.addAttribute("countries", new String[]{"한국", "미국", "케냐"});
	}

	@RequestMapping("sub6")
	public void sub6(Model model) {
		List<String> data = List.of("java", "css", "html", "js", "jpg", "jpeg", "png", "gif");
		model.addAttribute("myList", data);
	}

	@RequestMapping("sub7")
	public void sub7(Model model) {
		List<String> data = List.of("🖐️", "💕", "😘", "❤️");
		model.addAttribute("myList", data);

		List<Integer> numbers = List.of(1, 2, 3, 4);
		model.addAttribute("numbers", numbers);
	}

	@RequestMapping("sub8")
	public void sub8(Model model) {
		model.addAttribute("numbers", List.of(500.0, 3.14));
		model.addAttribute("cities", List.of("서울", "런던", "뉴욕"));
	}

	@RequestMapping("sub9")
	public void sub9(Model model) {
		Map<String, String> map = new HashMap<>();
		map.put("name", "손흥민");
		map.put("age", "33");
		map.put("team", "Tottenham");
		model.addAttribute("myMap", map);
	}

	@RequestMapping("sub10")
	public void sub10(Model model) {
		model.addAttribute("names", Map.of(
						"HMSon", "토트넘",
						"KILee", "PSG",
						"MJKim", "바이에른뮌헨"));

		model.addAttribute("others", Map.of(
						"손", "흥민",
						"리", "강인"));
	}
}
