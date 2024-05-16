package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Controller40 {

	@GetMapping("/api/someurl")
	public void method1() {
		System.out.println("Controller40.method1");
	}

	@PostMapping("/api/someurl")
	public void method2() {
		System.out.println("Controller40.method2");
	}

	@GetMapping("/api/someurl2")
	public void method3() {
		System.out.println("Controller40.method3");
	}

	@PostMapping("/api/someurl2")
	public void method4() {
		System.out.println("Controller40.method4");
	}

	@GetMapping("/api/someurl3")
	public void method5(@RequestParam("param1") String param1,
	                    @RequestParam("param2") String param2) {

		System.out.println(param1);
		System.out.println(param2);
	}

	@PostMapping("/api/someurl3")
	public void method6(@RequestParam("id") Integer id,
	                    @RequestParam("city") String city,
	                    @RequestParam("country") String country) {

		System.out.println(id);
		System.out.println(city);
		System.out.println(country);
	}

	@GetMapping("/api/someurl4")
	public void method7(@RequestParam("name") String name,
	                    @RequestParam("age") Integer age) {
		System.out.println(name);
		System.out.println(age);
	}

	@PostMapping("/api/someurl4")
	public void method8() {
		System.out.println("Controller40.method8");
	}
}
