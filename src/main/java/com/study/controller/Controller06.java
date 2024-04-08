package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("main6")
public class Controller06 {
	@RequestMapping("sub1")
	public void method1() {
		System.out.println("Controller06.main6.sub1");
	}

	//http://localhost:8080/main6/sub2?password=123&password2=456
	@RequestMapping("sub2")
	public void method2(@RequestParam(value = "password", required = true) String param1
					, @RequestParam(value = "password2", required = false) Integer param2) {
		if (param1.equals("123") && param2 == 456) {
			System.out.println("암호 확인");
		}
	}

	// localhost:8080/main6/sub3?name=kim&age=44
	// localhost:8080/main6/sub3?name=lee
	// localhost:8080/main6/sub3?age=55
	@RequestMapping("sub3")
	public void method3(
					@RequestParam(value = "name") String param1,
					@RequestParam(value = "age", required = false) Integer param2
	) {
		if (param1.equals("김민재")) {
			System.out.println("method3 실행");
		}
	}

	@RequestMapping("sub4")
	public void method4(@RequestParam(required = false) String name,
	                    @RequestParam(required = false) Integer age) {
		System.out.println("name = " + name);
		System.out.println("age = " + age);
	}

	// /main6/sub5?address=sinchon&city=seoul
	// /main6/sub5?city=busan
	// /main6/sub5?address=강남
	@RequestMapping("sub5")
	public void method5(@RequestParam(required = false) String city,
	                    @RequestParam(required = false) String address) {
		System.out.println("city = " + city);
		System.out.println("address = " + address);
		System.out.println("Controller06.method5");
	}

	// /main6/sub6?address=강남
	@RequestMapping("sub6")
	public void method6(String address
					, String city) {
		System.out.println("address = " + address); // required = false;
		System.out.println("city = " + city);
	}

	@RequestMapping("sub7")
	public void method7(String name
					, String age) {
		System.out.println("name = " + name);
		System.out.println("age = " + age);
	}

	//http://localhost:8080/main6/sub8?name=%ED%9D%A5%EB%AF%BC&address=seoul&address=sinchon&address=mapo
	@RequestMapping("sub8")
	public void method8(String name, String[] address) {
		System.out.println("name = " + name);
		System.out.println("address = " + Arrays.toString(address));
	}

	@RequestMapping("sub9")
	public void method9(Integer[] age, String[] city) {
		System.out.println("age = " + Arrays.toString(age));
		System.out.println("city = " + Arrays.toString(city));
	}
}
