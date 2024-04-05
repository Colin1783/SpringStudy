package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main3")
public class Controller03 {
	@RequestMapping("sub1")
	public void method1() {
		System.out.println("Controller3.method1");
	}

	@RequestMapping("sub2")
	public void method2() {
		System.out.println("Controller3.method2");
	}

	@RequestMapping(value = "sub3", params = "name")
	public void method3() {
		System.out.println("name 파라미터가 있을 때 실행");
	}

	@RequestMapping(value = "sub3", params = {"name", "age"})
	public void method4() {
		System.out.println("name, age 파라미터가 있을 때 실행");
	}

	@RequestMapping(value = "sub3", params = {"address", "city"})
	public void method5() {
		System.out.println("address, city 파라미터가 있을 때 실행");
	}

	@RequestMapping(value = "sub3", params = {"country", "city"})
	public void method6() {
		System.out.println("country, city 파라미터가 있을 때 실행");
	}
}
