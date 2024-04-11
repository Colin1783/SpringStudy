package com.study.controller;

import com.study.domain.MyBean121;
import com.study.domain.MyBean122;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main12")
public class Controller12 {
	@RequestMapping("sub1")
	public void sub1(Model model) {
		model.addAttribute("age", 30);
//		model.addAttribute("products", List.of());
		model.addAttribute("products", List.of("Apple", "Banana"));

		model.addAttribute("member", Map.of(
						"country", "korea",
						"age", 30));
//		model.addAttribute("member", Map.of(
//						"country", "japan",
//						"age", 20));
//		model.addAttribute("member", Map.of(
//						"country", "US",
//						"age",25));
	}

	@RequestMapping("sub2")
	public void sub2(Model model) {
		model.addAttribute("member", Map.of(
						"country", "korea",
						"age", 30));

		model.addAttribute("age", 18);
	}

	@RequestMapping("sub3")
	public void sub3(Model model) {

		model.addAttribute("dan1", 5);

		int[] dan = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9};
		model.addAttribute("dan", dan);
	}

	@RequestMapping("sub4")
	public void sub4(Model model) {
		model.addAttribute("myList", List.of("java", "css", "react"));
		model.addAttribute("foods", List.of("피자", "햄버거", "찌개", "돈까스"));

		model.addAttribute("myMap", Map.of("1", "java", "2", "css", "3", "react"));
		model.addAttribute("cars", Map.of("Tesla", "model3", "Kia", "sonata", "BMW", "X5"));

		model.addAttribute("myList2", List.of("가방", "나비", "다리"));
		model.addAttribute("myMap2", Map.of("A", "Apple", "B", "Banana", "C", "Carrot"));

	}

	@RequestMapping("sub5")
	public void sub5(Model model) {
		model.addAttribute("myList", List.of("java", "css", "react"));
	}

	@RequestMapping("sub6")
	public void sub6(Model model) {
		MyBean121 e1 = new MyBean121("sportage", "kia", 3400, "korea");
		MyBean121 e2 = new MyBean121("model x", "tesla", 5900, "usa");
		MyBean121 e3 = new MyBean121("A5", "audi", 7000, "germany");
		MyBean121 e4 = new MyBean121("xc90", "volvo", 12000, "sweden");

		model.addAttribute("cars", List.of(e1, e2, e3, e4));
	}

	@RequestMapping("sub7")
	public void sub7(Model model) {
		MyBean122 e1 = new MyBean122("손흥민", "한국", "토트넘", "축구", List.of("공격수"));
		MyBean122 e2 = new MyBean122("김하성", "한국", "샌디에이고", "야구", List.of("유격수", "2루수"));
		MyBean122 e3 = new MyBean122("리오넬 메시", "아르헨티나", "마이애미", "축구", List.of("공격수"));
		MyBean122 e4 = new MyBean122("르브론 제임스", "미국", "엘에이", "농구", List.of("스몰포워드", "파워포워드"));

		model.addAttribute("playerList", List.of(e1, e2, e3, e4));
	}
}
