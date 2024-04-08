package com.study.controller;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("main7")
public class Controller07 {
	@RequestMapping("sub1")
	public void method1(String search, HttpServletResponse resp) throws IOException {
//		String result = search + "키워드 검색 결과";
		String result = STR."""
						<!DOCTYPE html>
						      <html>
						      <head>
						          <title>Styled Page</title>
						          <style>
						           div {
                            background-color: #4CAF50; /* 배경색을 진한 녹색으로 설정 */
                            color: white; /* 텍스트 색상을 흰색으로 설정 */
                            font-size: 16px; /* 폰트 크기 설정 */
                            text-align: center; /* 텍스트를 가운데 정렬 */
                            padding: 20px; /* 내부 여백을 모든 방향에 20픽셀로 설정 */
                            border-radius: 10px; /* 모서리를 둥글게 처리 */
                            max-width: 300px; /* 최대 너비 설정 */
                            margin: auto; /* 좌우 마진을 자동으로 설정하여 중앙 정렬 */
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* 그림자 효과 추가 */
                        }
						          </style>
						      </head>
						      <body>
						          <div> \{search} 키워드 검색 결과 </div>
						      </body>
						      </html>
						""";

		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().print(result);

	}

	//main7 sub2
	@RequestMapping("sub2")
	public String method2(String search, HttpServletResponse resp) throws IOException {
		//요청 정보 분석 / 가공
		// 비즈니스 로직 처리
		// 결과를 모델에 담음
		// view로 forwarding(return viewname)
		return "view1";
	}

	@RequestMapping("sub3")
	public String method3() {
		return "view2";
		// /WEB-INF/view/view2.jsp로 포워딩
	}

	@RequestMapping("sub4")
	public String method4() {
		return "view3";
		// /WEB-INF/view/view3.jsp로 포워딩
	}

	@RequestMapping("sub5")
	public String method5() {
		return "/main7/sub5";
	}

	@RequestMapping("sub6")
	public String method6() {
		return null;
	}

	@RequestMapping("sub7")
	public void method7() {
		// 요청 경로와 같은 view의 이름으로 결정됨
		// view : /WEB-INF/view/main7/sub7.jsp
	}

	@RequestMapping("sub8")
	public void method8() {
		// 요청 경로와 같은 view의 이름으로 결정됨
		// view : /WEB-INF/view/main7/sub8.jsp
	}
}
