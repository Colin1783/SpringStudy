package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import com.study.mapper.Mapper01;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
@RequestMapping("main30")
public class Controller30 {
	@Autowired
	private DataSource dataSource;

	// 직접 만든 객체(dependency 의존성)
//	private Mapper01 mapper = new Mapper01();

	// inversion of Controll(IOC)
	// Dependency Injection(DI)

	@Autowired
	private Mapper01 mapper;

	@GetMapping("sub1")
	public void sub1(Integer id, Model model) throws SQLException {
		MyBean254Customer c = mapper.getCustomerById(id);
		model.addAttribute("customer", c);
	}

	@PostMapping("sub1/update")
	public String update1(MyBean254Customer customer, RedirectAttributes rt) throws SQLException {
		String sql = """
						UPDATE Customers
						SET CustomerName = ?,
						    ContactName = ?,
								Address = ?,
								City = ?,
								PostalCode = ?,
								Country = ?
						WHERE CustomerID = ? ;
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		try (con; ps) {

			ps.setString(1, customer.getCustomerName());
			ps.setString(2, customer.getContactName());
			ps.setString(3, customer.getAddress());
			ps.setString(4, customer.getCity());
			ps.setString(5, customer.getPostalCode());
			ps.setString(6, customer.getCountry());
			ps.setInt(7, customer.getId());

			int rows = ps.executeUpdate();
			if (rows > 0) {
				rt.addFlashAttribute("message", customer.getId() + "번 고객 정보 수정 완료");
			} else {
				rt.addFlashAttribute("message", "수정 실패");
			}
		}
		rt.addAttribute("id", customer.getId());
		return "redirect:/main30/sub1";
	}

	@GetMapping("sub2")
	public void method3(Integer id, Model model) throws SQLException {
		if (id != null) {
			String sql = """
							SELECT *
							FROM Employees
							WHERE employeeId = ?
							""";

			Connection con = dataSource.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			try (con; ps; rs) {
				if (rs.next()) {
					MyBean256Employees employee = new MyBean256Employees();
					employee.setId(rs.getInt(1));
					employee.setLastName(rs.getString(2));
					employee.setFirstName(rs.getString(3));
					employee.setBirth(rs.getString(4));
					employee.setPhoto(rs.getString(5));
					employee.setNotes(rs.getString(6));

					model.addAttribute("employees", employee);
				}
			}
		}
	}

	@PostMapping("sub2/update")
	public String update2(MyBean256Employees employees, RedirectAttributes rt) throws SQLException {
		String sql = """
						UPDATE Employees
						SET lastName = ?,
						firstName = ?,
						BirthDate = ?,
						photo = ?,
						notes = ?
						WHERE employeeId = ?;
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);

		try (con; ps) {
			ps.setString(1, employees.getLastName());
			ps.setString(2, employees.getFirstName());
			ps.setString(3, employees.getBirth());
			ps.setString(4, employees.getPhoto());
			ps.setString(5, employees.getNotes());
			ps.setInt(6, employees.getId());

			int rows = ps.executeUpdate();
			if (rows > 0) {
				rt.addFlashAttribute("message", employees.getId() + "번 직원 정보 수정이 완료되었습니다.");
			} else {
				rt.addFlashAttribute("message", employees.getId() + "번 직원 정보 수정을 실패했습니다.");
			}
		}

		rt.addAttribute("id", employees.getId());
		return "redirect:/main30/sub2";
	}
}
