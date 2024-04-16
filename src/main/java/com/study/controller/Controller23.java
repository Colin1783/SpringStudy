package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main23")
public class Controller23 {
	@RequestMapping("sub1")
	public void method1(Model model) throws SQLException {
		var list = new ArrayList();

		//요청 파라미터 분석 / 가공
		// 비즈니스 로직 실행
		String sql = """
						SELECT FirstName FROM Employees;
						""";
		//1. db와 연결
		String url = "jdbc:mariadb://localhost:3306/w3schools";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		//2. 실행 준비
		Statement statement = con.createStatement();
		//3. 쿼리 실행
		ResultSet resultSet = statement.executeQuery(sql);
		//4. 결과 가공

		//5. 자원 닫기
		try (resultSet; statement; con) {
			while (resultSet.next()) {
				String name = resultSet.getString(1); // 첫번째 column의 값 얻기
				list.add(name);
			}
		}
		// Model에 결과 넣고
		model.addAttribute("nameList", list);
		// View로 forward
	}

	@GetMapping("sub2")
	public void method2(Model model) throws Exception {
		var list = new ArrayList<String>();

		String sql = "SELECT CustomerName From Customers";
		//1.db 연결
		String url = "jdbc:mariadb://localhost:3306/w3schools";
		String user = "root";
		String password = "1234";

		Connection con = DriverManager.getConnection(url, user, password);

		//2. 실행 준비
		Statement statement = con.createStatement();

		//3. 쿼리실행
		ResultSet resultSet = statement.executeQuery(sql);

		//4.결과 가공
		try (resultSet; statement; con) {
			while (resultSet.next()) {
				String name = resultSet.getString(1);
				list.add(name);
			}
		}
		model.addAttribute("nameList", list);
	}
}
