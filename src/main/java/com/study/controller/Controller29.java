package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
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
@RequestMapping("main29")
public class Controller29 {
	@Autowired
	private DataSource dataSource;

	@GetMapping("sub1")
	public void method1(Integer id, Model model) throws SQLException {
		if (id != null) {
			String sql = """
							SELECT * 
							FROM Customers 
							WHERE customerId = ?
							""";

			Connection con = dataSource.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			try (con; ps; rs) {
				if (rs.next()) {
					MyBean254Customer customer = new MyBean254Customer();
					customer.setId(rs.getInt(1));
					customer.setCustomerName(rs.getString(2));
					customer.setContactName(rs.getString(3));
					customer.setAddress(rs.getString(4));
					customer.setCity(rs.getString(5));
					customer.setCountry(rs.getString(7));
					customer.setPostalCode(rs.getString(6));

					model.addAttribute("customers", customer);
				}
			}
		}
	}

	@PostMapping("sub1/delete")
	public String method2(Integer id, RedirectAttributes rttr) throws SQLException {
		String sql = """
						DELETE FROM Customers
						WHERE customerId = ?
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		int rowCount = ps.executeUpdate();

		if (rowCount > 0) {
			rttr.addFlashAttribute("message", id + "번 고객이 삭제되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "삭제가 불가능한 회원입니다.");
		}

		return "redirect:/main29/sub1";
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

	@PostMapping("sub2/delete")
	public String method4(Integer id, RedirectAttributes rtr) throws SQLException {
		String sql = """
						DELETE FROM Employees
						WHERE employeeId = ?
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);

		int rowCount = ps.executeUpdate();
		if (rowCount > 0) {
			rtr.addFlashAttribute("message", "삭제가 완료되었습니다.");
		} else {
			rtr.addFlashAttribute("message", "삭제를 실패했습니다. 다시 확인해 주세요.");
		}
		return "redirect:/main29/sub2";
	}
}
