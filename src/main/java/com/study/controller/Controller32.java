package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import com.study.mapper.Mapper02;
import com.study.mapper.Mapper03;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("main32")
@RequiredArgsConstructor
public class Controller32 {
	private final Mapper03 mapper;
	private final Mapper02 mapper2;

	@RequestMapping("sub1")
	public void method1() {
		int rowCount = mapper.deleteOneCustomer();
		System.out.println(rowCount + "명이 삭제됨");
	}

	@RequestMapping("sub2")
	public void method2(Integer id) {
		int rowCount = mapper.deleteOneCustomerbyID(3);
		System.out.println(rowCount + "명이 삭제됨");
	}

	@RequestMapping("sub3")
	public void method3(Integer eid) {
		int rowCount = mapper.deleteOneEmployeebyID(2);
		System.out.println(rowCount + "명이 삭제됨");
	}

	//customerName=흥민&contactName=캡틴&city=런던&country=한국&address=토트넘
	@RequestMapping("sub4")
	public void method4(MyBean254Customer customer) {
		mapper.insertCustomer(customer);
	}

	@GetMapping("sub5")
	public void method5() {
	}

	@PostMapping("sub5")
	public String method5(MyBean256Employees employee, RedirectAttributes rttr) {
		int rows = mapper.insertEmployees(employee);

		if (rows > 0) {
			rttr.addFlashAttribute("message", rows + "명 직원이 입력되었습니다");
		} else {
			rttr.addFlashAttribute("message", "입력되지 않았습니다.");
		}
		return "redirect:/main32/sub5";
	}

	@GetMapping("sub6")
	public void method6(@RequestParam(value = "id", required = false) Integer eid,
	                    Model model) {
		if (eid != null) {
			MyBean256Employees e = mapper2.selectOneEmployee2(eid);
			model.addAttribute("employee", e);
		}
	}

	@PostMapping("sub6/update")
	public String method7(MyBean256Employees employee, RedirectAttributes rttr) {
		int i = mapper.updateEmployee(employee);

		if (i > 0) {
			rttr.addFlashAttribute("message", i + "명 직원이 수정되었습니다");
		} else {
			rttr.addFlashAttribute("message", "입력되지 않았습니다.");
		}

		rttr.addAttribute("id", employee.getId());
		return "redirect:/main32/sub6";
	}

	@GetMapping("sub7")
	public void method8(@RequestParam(value = "id", required = false) Integer id, Model model) {
		if (id != null) {
			MyBean254Customer customer = mapper2.selectOneCustomer4(id);
			model.addAttribute("customer", customer);
			System.out.println(customer);
		}
	}

	@PostMapping("sub7/update")
	public String method9(MyBean254Customer customer, RedirectAttributes rttr) {
		int i = mapper.updateCustomer(customer);

		if (i > 0) {
			rttr.addFlashAttribute("message", i + "명 고객이 수정되었습니다");
		} else {
			rttr.addFlashAttribute("message", "입력되지 않았습니다.");
		}

		rttr.addAttribute("id", customer.getId());
		return "redirect:/main32/sub7";
	}
}