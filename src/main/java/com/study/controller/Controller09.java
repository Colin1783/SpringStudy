package com.study.controller;

import com.study.domain.MyBean09;
import com.study.domain.MyBean092;
import com.study.domain.MyBean093;
import com.study.domain.MyBean094;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main9")
public class Controller09 {
	@RequestMapping("sub1")
	public void sub1(Model model) {
		MyBean09 myBean09 = new MyBean09();
		model.addAttribute("person", myBean09);
	}

	@RequestMapping("sub2")
	public void sub2(Model model) {
		MyBean092 obj = new MyBean092();
		obj.setAge(20);
		obj.setName("손흥민");

		MyBean092 obj2 = new MyBean092();
		obj2.setAge(20);
		obj2.setName("차범근");

		model.addAttribute("person", obj);
		model.addAttribute("person2", obj2);
	}

	@RequestMapping("sub3")
	public void sub3(Model model) {
		MyBean093 obj1 = new MyBean093();
		obj1.setAge(20);
		obj1.setAddress("신촌");
		obj1.setCity("서울");
		MyBean093 obj2 = new MyBean093();
		obj2.setAge(60);
		obj2.setAddress("해운대");
		obj2.setCity("부산");

		model.addAttribute("person1", obj1);
		model.addAttribute("person2", obj2);
	}

	@RequestMapping("sub4")
	public void sub4(Model model) {
		MyBean094 myCar = new MyBean094();
		myCar.setModel("the All New Sportage");
		myCar.setPrice(34_000_000);
		myCar.setCompany("KIA");
		myCar.setWeight(1635.0);

		model.addAttribute("car", myCar);
	}
}
