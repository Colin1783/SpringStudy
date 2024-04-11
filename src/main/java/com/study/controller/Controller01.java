package com.study.controller;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.io.IOException;

@Controller
public class Controller01 {
	private String name;
	String data = name + "님 반갑습니다.";

	@RequestMapping("/main1")
	public void method(WebRequest request, HttpServletResponse response) throws IOException {
		// 1.요청 분석/가공
		String name = request.getParameter("name");
		// 2. 비즈니스 로직 실행

		String result = STR."""
<!DOCTYPE html>
			<html>
				<body>
					<h1>\{data}</h1>
				</body>
			</html>
			""";
		// 3. 결과 응답
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().print(result);
	}

	// 요청 메세지 첫 줄이 다음과 같으면 실행
	// GET / main1/sub1 HTTP/1.1
	@RequestMapping(value = "/main1/sub1")
	public void method2() {
		System.out.println("Controller01.method2");
	}

	// 요청 메세지 첫 줄이 다음과 같으면 실행
	// GET / main1/sub2 HTTP/1.1
	@RequestMapping("/main1/sub2")
	public void method3() {
		System.out.println("Controller01.method3");
	}
}
