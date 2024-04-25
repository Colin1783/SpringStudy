package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main27")
public class Controller27 {
	@Autowired
	private DataSource dataSource;

	@GetMapping("sub1")
	public String sub1(@RequestParam(defaultValue = "1") Integer page,
	                   Model model) throws SQLException {
		int offset = (page - 1) * 10;
		String sql = """
						SELECT * 
						FROM Customers
						ORDER BY CustomerID
						LIMIT ?, 10
						""";

		var list = new ArrayList<MyBean254Customer>();

		Connection conn = dataSource.getConnection();

		// 페이지 정보 산출
		// 총 레코드 수 조회
		String countSql = "SELECT COUNT(*) FROM Customers";
		Statement stmt = conn.createStatement();
		ResultSet rs1 = stmt.executeQuery(countSql);
		int total = 0;
		try (rs1; stmt;) {
			if (rs1.next()) {
				total = rs1.getInt(1);
			}
		}
		// 마지막 페이지 번호
		int lastPageNumber = (total - 1) / 10 + 1;
		model.addAttribute("lastPageNumber", lastPageNumber);

		// 페이지 링크의 begin, end 산출
		int endPageNumber = (((page - 1) / 10) + 1) * 10;
		int beginPageNumber = endPageNumber - 9;

		// endPageNumber 가 최종페이지를 넘을 순 없다.
		endPageNumber = Math.min(endPageNumber, lastPageNumber);

		model.addAttribute("endPageNumber", endPageNumber);
		model.addAttribute("beginPageNumber", beginPageNumber);

		// 다음 버튼 클릭 시 이동해야 하는 페이지 nextPageNumber 산출
		int nextPageNumber = beginPageNumber + 10;
		if (nextPageNumber <= lastPageNumber) {
			model.addAttribute("nextPageNumber", nextPageNumber);
		}

		// 이전 버튼 클릭 시 이동해야 하는 페이지 prevPageNumber 산출
		int prevPageNumber = beginPageNumber - 10;
		if (prevPageNumber >= 1) {
			model.addAttribute("prevPageNumber", prevPageNumber);
		}

		// 현재 페이지
		model.addAttribute("currentPage", page);

		// 고객 레코드 조회
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, offset);
		ResultSet rs = ps.executeQuery();

		try (rs; ps; conn) {
			while (rs.next()) {
				MyBean254Customer customer = new MyBean254Customer();

				customer.setId(rs.getInt(1));
				customer.setCustomerName(rs.getString(2));
				customer.setContactName(rs.getString(3));
				customer.setAddress(rs.getString(4));
				customer.setCity(rs.getString(5));
				customer.setPostalCode(rs.getString(6));
				customer.setCountry(rs.getString(7));

				list.add(customer);
			}

			model.addAttribute("customerList", list);
		}

		return "main27/sub1";
	}

	@GetMapping("sub2")
	public String method2(@RequestParam(defaultValue = "1") Integer page,
	                      Model model) throws SQLException {
		int offset = (page - 1) * 10;
		String sql = """
						SELECT * 
						FROM Employees
						ORDER BY EmployeeID DESC
						LIMIT ?, 10
						""";

		var list = new ArrayList<MyBean256Employees>();

		Connection con = dataSource.getConnection();

		String countSql = "SELECT COUNT(*) FROM Employees";
		Statement st = con.createStatement();
		ResultSet rs1 = st.executeQuery(countSql);
		int total = 0;
		try (rs1; st;) {
			if (rs1.next()) {
				total = rs1.getInt(1);
			}
		}
		// 마지막 페이지 번호
		int lastPageNumber = (total - 1) / 10 + 1;
		model.addAttribute("lastPageNumber", lastPageNumber);

		// 페이지 링크의 begin, end 산출
		int endPageNumber = (((page - 1) / 10) + 1) * 10;
		int beginPageNumber = endPageNumber - 9;

		// endPageNumber 가 최종페이지를 넘을 순 없다.
		endPageNumber = Math.min(endPageNumber, lastPageNumber);

		model.addAttribute("endPageNumber", endPageNumber);
		model.addAttribute("beginPageNumber", beginPageNumber);

		// 다음 버튼 클릭 시 이동해야 하는 페이지 nextPageNumber 산출
		int nextPageNumber = beginPageNumber + 10;
		if (nextPageNumber <= lastPageNumber) {
			model.addAttribute("nextPageNumber", nextPageNumber);
		}

		// 이전 버튼 클릭 시 이동해야 하는 페이지 prevPageNumber 산출
		int prevPageNumber = beginPageNumber - 10;
		if (prevPageNumber >= 1) {
			model.addAttribute("prevPageNumber", prevPageNumber);
		}

		// 현재 페이지
		model.addAttribute("currentPage", page);

		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, offset);
		ResultSet rs = pst.executeQuery();

		try (rs; pst; con) {
			while (rs.next()) {
				MyBean256Employees employees = new MyBean256Employees();

				employees.setId(rs.getInt(1));
				employees.setFirstName(rs.getString(2));
				employees.setLastName(rs.getString(3));
				employees.setBirth(rs.getString(4));
				employees.setPhoto(rs.getString(5));
				employees.setNotes(rs.getString(6));

				list.add(employees);
			}

			model.addAttribute("employeeList", list);
		}

		return "main27/sub2";
	}
}