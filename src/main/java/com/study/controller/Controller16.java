package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main16")
public class Controller16 {
	@RequestMapping("sub1")
	public void sub1() {
	}

	@RequestMapping("/main/sub2")
	public void sub2() {
	}
}