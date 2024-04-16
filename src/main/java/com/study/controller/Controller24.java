package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean242;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main24")
public class Controller24 {

	@Autowired
	private DataSource dataSource;

	@GetMapping("sub1")
	public void method1(Model model) throws Exception {
		var list = new ArrayList<MyBean241>();
		String sql = "SELECT FirstName, LastName from Employees";

		Connection conn = dataSource.getConnection();
		Statement statement = conn.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		try (conn; statement; resultSet) {
		}
		while (resultSet.next()) {
			MyBean241 bean = new MyBean241();
			bean.setFirstName(resultSet.getString(1));
			bean.setLastName(resultSet.getString(2));
			list.add(bean);
		}
		model.addAttribute("employees", list);
	}

	@GetMapping("sub2")
	public void method2(Model model) throws Exception {
		var list = new ArrayList<MyBean242>();

		String sql = "SELECT CustomerName, City, Country from Customers";

		Connection conn = dataSource.getConnection();
		Statement statement = conn.createStatement();
		ResultSet rs = statement.executeQuery(sql);

		try (conn; statement; rs) {
		}
		while (rs.next()) {
			MyBean242 bean = new MyBean242();
			bean.setCustomerName(rs.getString(1));
			bean.setCity(rs.getString(2));
			bean.setCountry(rs.getString(3));
			list.add(bean);
		}
		model.addAttribute("customers", list);
	}

	@GetMapping("sub3")
	public void method3(Model model) throws Exception {
		var list = new ArrayList<String>();
		String sql = "SELECT DISTINCT Country from Customers";

		Connection conn = dataSource.getConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		try (conn; st; rs) {
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			model.addAttribute("countries", list);
		}
	}
}
