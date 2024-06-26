package com.study.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/main43")
public class Controller43 {

	@GetMapping("/sub1")
	@ResponseBody//ResponseEntity일 때 생략 가능
	public ResponseEntity sub1() {
		return ResponseEntity.ok().build();

	}

	@GetMapping("/sub2")
	@ResponseBody
	public ResponseEntity sub2() {
		return ResponseEntity.status(400).build();
	}

	@GetMapping("/sub3")
	public ResponseEntity sub3() {
		return ResponseEntity.status(401).body("hello");
	}

	@GetMapping("/sub4")
	public ResponseEntity sub4() {
		return ResponseEntity.status(403).body("hello");
	}

	@GetMapping("/sub5")
	public ResponseEntity sub5() {
		return ResponseEntity.badRequest().build();
	}

	@GetMapping("/sub6")
	public ResponseEntity sub6() {
		return ResponseEntity.status(500).body("hello");
	}
}
