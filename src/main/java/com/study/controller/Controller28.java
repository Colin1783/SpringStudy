package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main28")
public class Controller28 {
	@Autowired
	private DataSource dataSource;

	@GetMapping("sub1")
	public void sub1() {
	}

	@PostMapping("sub1")
	public String sub1(MyBean254Customer customer, RedirectAttributes rttr) throws SQLException {
		String sql = """
						INSERT INTO Customers
						(CustomerName, ContactName, Address, City, PostalCode, Country)
						VALUES (?, ?, ?, ?, ?, ?);
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);

		try (con; pst;) {
			pst.setString(1, customer.getName());
			pst.setString(2, customer.getContactName());
			pst.setString(3, customer.getAddress());
			pst.setString(4, customer.getCity());
			pst.setString(5, customer.getPostalCode());
			pst.setString(6, customer.getCountry());

			int rowCount = pst.executeUpdate();
			if (rowCount > 0) {
				rttr.addFlashAttribute("message", "새 고객 정보가 등록되었습니다.");
			}
		}


		return "redirect:/main28/sub1";
	}

	@GetMapping("sub2")
	public void method2() {
	}

	@PostMapping("sub2")
	public String method2(MyBean256Employees employee, RedirectAttributes rattr) throws SQLException {
		String sql = """
						INSERT INTO Employees
						(FirstName, LastName, BirthDate, Photo, Notes)
						VALUES (?, ?, ?, ?, ?);
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		try (con; pst;) {
			pst.setString(1, employee.getFirstName());
			pst.setString(2, employee.getLastName());
			pst.setString(3, employee.getBirth());
			pst.setString(4, employee.getPhoto());
			pst.setString(5, employee.getNotes());

			int rowCount = pst.executeUpdate();
			if (rowCount > 0) {
				rattr.addFlashAttribute("message", "직원 등록이 완료되었습니다.");
			}
		}

		return "redirect:/main27/sub2";
	}
}
