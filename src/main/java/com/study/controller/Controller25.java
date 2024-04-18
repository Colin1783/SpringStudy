package com.study.controller;

import com.study.domain.*;
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
@RequestMapping("main25")
public class Controller25 {
	@Autowired
	private DataSource dataSource;

	@GetMapping("sub1")
	public void method1(@RequestParam(value = "name", required = false)
	                    String searchName,
	                    Model model) throws SQLException {
		var list = new ArrayList<MyBean251>();
		String sql = STR."""
                SELECT *
                FROM Employees
                WHERE LastName = '\{searchName}'
                """;
		Connection conn = dataSource.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		try (rs; stmt; conn) {
			while (rs.next()) {
				String id = rs.getString(1);
				String lastName = rs.getString(2);
				String firstName = rs.getString(3);
				String birthDate = rs.getString(4);
				String photo = rs.getString(5);
				String notes = rs.getString(6);

				MyBean251 obj
								= new MyBean251(id, lastName, firstName, birthDate, photo, notes);
				list.add(obj);
			}

		}
		model.addAttribute("employees", list);
	}

	@GetMapping("sub2")
	public void method2(@RequestParam(value = "name", required = false)
	                    String search,
	                    Model model) throws Exception {
		var list = new ArrayList<MyBean252>();
		String sql = STR."""
								SELECT *
								FROM Products
								WHERE ProductName LIKE "%\{search}%"
								""";

		Connection con = dataSource.getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);

		try (rs; st; con) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String unit = rs.getString(5);
				double price = rs.getDouble(6);

				MyBean252 product = new MyBean252(id, name, unit, price);
				list.add(product);
			}
		}
		model.addAttribute("products", list);
	}

	@GetMapping("sub3")
	public void method3(String search, Model model) throws Exception {
		String oldsql = STR."""
								SELECT *
								FROM Products
								WHERE ProductName LIKE "%\{search}%"
								""";

		String sql = """
						SELECT *
						FROM Products
						WHERE ProductName = ?
						""";

		var list = new ArrayList<MyBean252>();

		Connection con = dataSource.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, search);
		ResultSet rs = pst.executeQuery();
		try (con; pst; rs) {
			while (rs.next()) {
				MyBean252 row = new MyBean252(rs.getInt(1),
								rs.getString(2),
								rs.getString(5),
								rs.getDouble(6));
				list.add(row);
			}
		}
		model.addAttribute("products", list);
	}

	@GetMapping("sub4")
	public String method4(String name, Model model) throws Exception {
		String sql = """
						SELECT *
						FROM Customers
						WHERE CustomerName LIKE ?
						""";

		Connection con = dataSource.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, "%" + name + "%");
		ResultSet rs = pst.executeQuery();

		var list = new ArrayList<MyBean253>();

		try (con; pst; rs) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String customerName = rs.getString(2);
				String contactName = rs.getString(3);
				String address = rs.getString(4);
				String city = rs.getString(5);
				String country = rs.getString(7);

				MyBean253 customer = new MyBean253(id, customerName, contactName, address, city, country);
				list.add(customer);
			}
		}
		model.addAttribute("customers", list);
		model.addAttribute("prevSearch", name);

		return "main25/sub4";
	}

	@GetMapping("sub5")
	public String method5(String search, Model model) throws SQLException {
		var list = new ArrayList<MyBean253>();
		String sql = """
						SELECT * FROM Customers
						WHERE CustomerName LIKE ?
						""";
		String keyword = "%" + search + "%";

		Connection conn = dataSource.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, keyword);
		ResultSet rs = pstmt.executeQuery();

		try (conn; pstmt; rs) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String customerName = rs.getString(2);
				String contactName = rs.getString(3);
				String address = rs.getString(4);
				String city = rs.getString(5);
				String country = rs.getString(7);

				MyBean253 customer = new MyBean253(id, customerName, contactName, address, city, country);
				list.add(customer);
			}
		}

		model.addAttribute("customers", list);
		model.addAttribute("prevSearch", search);

		return "main25/sub4";
	}

	@GetMapping("sub6")
	public void method6(String search, Model model) throws SQLException {
		if (search == null || search.equals("")) {
			return;
		}
		String sql = """
						SELECT *
						FROM Products
						WHERE ProductName LIKE ?
						""";

		var list = new ArrayList<MyBean255>();

		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%" + search + "%");
		ResultSet rs = pstmt.executeQuery();

		try (con; pstmt; rs) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String supplier = rs.getString(3);
				String category = rs.getString(4);
				String unit = rs.getString(5);
				double price = rs.getDouble(6);

				MyBean255 product = new MyBean255(id, name, supplier, category, unit, price);
				list.add(product);
			}

			model.addAttribute("products", list);
			model.addAttribute("prevSearch", search);
		}
	}

	@GetMapping("sub7")
	public String method7(String search, Model model) throws SQLException {
		var list = new ArrayList<MyBean253>();
		String sql = """
						SELECT *
						FROM Customers
						WHERE CustomerName LIKE ?
						OR ContactName LIKE ?
						""";

		String keyword = "%" + search + "%";

		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, keyword);
		pstmt.setString(2, keyword);

		ResultSet rs = pstmt.executeQuery();
		try (con; pstmt; rs) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String contact = rs.getString(3);
				String address = rs.getString(4);
				String city = rs.getString(5);
				String country = rs.getString(5);

				MyBean253 obj = new MyBean253(id, name, contact, address, city, country);
				list.add(obj);
			}
		}
		model.addAttribute("customers", list);
		model.addAttribute("prevSearch", search);
		return "main25/sub4";
	}

	@GetMapping("sub8")
	public void method8(String search, Model model) throws SQLException {
		if (search == null || search.equals("")) {
			return;
		}

		String sql = """
						SELECT *
						FROM Employees
						WHERE LastName LIKE ?
						OR FirstName LIKE ?
						""";

		var list = new ArrayList<MyBean256Employees>();

		Connection con = dataSource.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, STR."%\{search}%");
		pstmt.setString(2, STR."%\{search}%");
		ResultSet rs = pstmt.executeQuery();

		try (con; pstmt; rs) {
			while (rs.next()) {
				int id = rs.getInt(1);
				String lName = rs.getString(2);
				String fName = rs.getString(3);
				String birth = rs.getString(4);
				String photo = rs.getString(5);
				String notes = rs.getString(6);

				MyBean256Employees data = new MyBean256Employees(id, lName, fName, birth, photo, notes);
				list.add(data);
			}
		}

		model.addAttribute("employees", list);
		model.addAttribute("prevSearch", search);
	}
}

