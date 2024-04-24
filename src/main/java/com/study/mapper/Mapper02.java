package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import com.study.domain.MyBean256Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper02 {

	@Select("SELECT NOW()")
	public String selectNow();

	//조회 결과 컬럼명과
	//리턴 타입의 객체 프로퍼티 명이 같으면
	// 값을 자동으로 바인딩
	@Select("""
					SELECT *
					FROM Customers 
					WHERE CustomerID = 1
					""")
	MyBean254Customer selectCustomer();

	@Select("""
					SELECT *
					FROM Customers
					WHERE CustomerID = 1
					""")
	MyBean254Customer selectOneCustomer();


	@Select("""
					SELECT EmployeeID id,
					LastName,
					FirstName,
					BirthDate birth,
					Photo,
					Notes
					  FROM Employees 
					WHERE EmployeeID = 2;
					""")
	MyBean256Employees selectOneEmployee1();

	@Select("""
					SELECT EmployeeID id,
					LastName,
					FirstName,
					BirthDate birth,
					Photo,
					Notes
					FROM Employees
					WHERE EmployeeID = #{id}
					""")
	MyBean256Employees selectOneEmployee2(Integer id);

	@Select("""
					SELECT CustomerID id,
					CustomerName,
					ContactName,
					address,
					city,
					postalcode,
					country
					FROM Customers
					WHERE CustomerID = #{id}
										""")
	MyBean254Customer selectOneCustomer4(Integer id);


	@Select("""
					SELECT *
					FROM Customers
					""")
	List<MyBean254Customer> selectAllCustomer1();

	@Select("""
					SELECT EmployeeID id,
					LastName,
					FirstName,
					BirthDate birth,
					Photo,
					Notes
					FROM Employees
					ORDER BY BirthDate DESC
					""")
	List<MyBean256Employees> selectAllEmployee1();


	@Select("""
												SELECT *
												FROM Customers
							WHERE Country = #{country1} 
					OR Country = #{country2}
							ORDER BY Country
												""")
	List<MyBean254Customer> selectCustomersByCountry(String country1, String country2);

	@Select("""
					SELECT
					    ProductID id,
					   	ProductName name,
					   	SupplierID,
					   	CategoryID,
					   	Unit,
					   	Price
					FROM Products
					WHERE Price BETWEEN #{min} AND #{max}
					ORDER BY Price
					""")
	List<MyBean256Product> selectProductByPrice(double min, double max);
}
