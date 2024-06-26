package com.study.controller;

import com.study.domain.MyBean411;
import com.study.domain.MyBean412;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/api/main41")
public class Controller41 {

	// @RequestBody
	// 역직렬화 (parsing, decoding) JSON -> Map.

	@PostMapping("/sub1")
	public void method1(@RequestBody Map<String, Object> map) {
		System.out.println("map = " + map);
	}

	@PostMapping("/sub2")
	public void method2(@RequestBody Map<String, Object> map) {
		System.out.println("map = " + map);
	}

	@PostMapping("/sub3")
	public void method3(@RequestBody Map<String, Object> map) {
		System.out.println("map = " + map);
	}

	@PostMapping("/sub4")
	public void method4(@RequestBody Map<String, Object> map) {
		System.out.println("map = " + map);
	}

	@PostMapping("/sub5")
	public void method5(@RequestBody Map<String, Object> map) {
		System.out.println("map = " + map);
		Object name = map.get("name");
		System.out.println(name.getClass());

		Object age = map.get("age");
		System.out.println(age.getClass());

		Object address = map.get("address");
		System.out.println(address.getClass());
	}

	@PostMapping("/sub6")
	public void method6(@RequestBody MyBean411 myBean411) {
		System.out.println("myBean411 = " + myBean411);
	}

	@PostMapping("/sub7")
	public void method7(@RequestBody MyBean412 myBean412) {
		System.out.println("myBean412 = " + myBean412);
	}
}
