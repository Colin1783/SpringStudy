package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("main22")
public class Controller22 {
	@GetMapping("sub1")
	public String sub1() {
		//view forward
		return "main22/sub1";
	}

	@GetMapping("sub2")
	public String sub2() {
		//redirect
		//redirection 응답
		//browser는 302응답을 받으면
		//Location header에 있는 값으로 재요청
		return "redirect:/main22/sub1";
	}

	@GetMapping("sub3")
	public void methdo3() {
		//login form 있는 jsp로 foward

	}

	@PostMapping("sub4")
	public String method4(String id, String password,
	                      RedirectAttributes attributes) {
		boolean ok = id.equals(password);
		if (ok) {
			// 로그인 성공 시
			// 성공 후 보여주는 페이지로 이동
			attributes.addAttribute("type", "login");
			return "redirect:/main22/sub5";
		} else {
			// 로그인 실패 시
			// 로그인 form 있는 페이지로 이동
			attributes.addAttribute("type", "fail");
			return "redirect:/main22/sub3";
		}
	}

	@GetMapping("sub5")
	public void method5() {
	}

	@GetMapping("sub6")
	public void method6() {
		//login form 있는 view로 forward

	}

	@PostMapping("sub7")
	public String method7(String id, String password,
	                      RedirectAttributes attributes) {
		boolean loginSuccess = id.equals(password);
		if (loginSuccess) {
			attributes.addAttribute("type", "success");
			return "redirect:/main22/sub8";
		} else {
			attributes.addAttribute("type", "fail");
			return "redirect:/main22/sub6";
		}
	}

	@GetMapping("sub8")
	public void method8() {
	}

	@GetMapping("sub9")
	public String method9(RedirectAttributes rttr) {
		//query String
		String condition = "";
		if (Math.random() < 0.5) {
			condition = "ok";
		} else {
			condition = "fail";
		}
		//redirection 시 정보 전달은 RedirectAttributes 활용
		rttr.addAttribute("condition", condition);
		rttr.addAttribute("type", "soccer");
		rttr.addAttribute("address", "신촌");
		rttr.addAttribute("city", "서울");
		return "redirect:/main22/sub10";
	}

	@GetMapping("sub10")
	public void method10(String condition) {
		System.out.println("condition = " + condition);
	}

	@GetMapping("sub11")
	public String method11(RedirectAttributes rttr) {
		//redirection 시 정보 전달은 RedirectAttributes활용
		//addAttribute : 쿼리스트링에 붙음
		rttr.addAttribute("type", "soccer");

		//addFlashAttribute = 모델에 붙음
		rttr.addFlashAttribute("attr1", List.of("car", "food", "phone"));
		return "redirect:/main22/sub12";
	}
//
//	@GetMapping("sub12")
//	public void method12(Model model) {
//		Object attr1 = model.getAttribute("attr1");
//		System.out.println("attr1 = " + attr1);
//	}


	@GetMapping("sub12")
	public void method12(@ModelAttribute("attr1") List<String> attr1) {
		System.out.println("attr1 = " + attr1);
	}

	@GetMapping("sub13")
	public void method13() {
	}

	@PostMapping("sub14")
	public String method14(String id, String pw,
	                       RedirectAttributes rttr) {
		boolean ok = id.equals(pw);
		if (ok) {
			// 로그인 성공시
			// 메인 페이지로 redirect
			rttr.addFlashAttribute("message", "로그인 성공하였습니다.");
			return "redirect:/main22/sub15";
		} else {
			// 로그인 실패시
			// 로그인 페이지로 redirect
			rttr.addFlashAttribute("message", "아이디와 패스워드를 확인해주세요");
			return "redirect:/main22/sub13";

		}
	}

	@GetMapping("sub15")
	public void method15() {
	}

	@GetMapping("sub16")
	public void method16() {
	}

	@PostMapping("sub17")
	public String method17(String id, String pw,
	                       RedirectAttributes rttr) {
		boolean ok = id.equals(pw);
		if (ok) {
			// 로그인 성공시
			// 메인 페이지로 redirect
			rttr.addFlashAttribute("message", "로그인 성공하였습니다.");
			return "redirect:/main22/sub15";
		} else {
			// 로그인 실패시
			// 로그인 페이지로 redirect
			rttr.addFlashAttribute("message", "아이디와 패스워드를 확인해주세요");
			return "redirect:/main22/sub13";

		}
	}

	@GetMapping("sub18")
	public void method18() {
	}
}