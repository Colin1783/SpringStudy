package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface Mapper03 {
	@Delete("""
						DELETE FROM Customers
					WHERE CustomerId = 1;
						""")
	int deleteOneCustomer();

	@Delete("""
					DELETE FROM Customers
					WHERE CustomerId = #{id};
					""")
	int deleteOneCustomerbyID(int id);


	@Delete("""
					DELETE FROM Employees
					WHERE employeeId = #{id};
					""")
	int deleteOneEmployeebyID(int id);


	@Insert("""
					INSERT INTO Customers
					(CustomerName, ContactName, Address, City, PostalCode, Country)
					VALUES (#{customerName}, #{contactName}, #{address}, #{city}, #{postalCode}, #{country})
					""")
	int insertCustomer(MyBean254Customer customer);

	@Insert("""
					INSERT INTO Employees
					(LastName, FirstName, BirthDate, Photo, Notes)
					VALUES(#{firstName}, #{lastName}, #{birth}, #{photo}, #{notes})
					""")
	int insertEmployees(MyBean256Employees employees);

	@Update("""
					UPDATE Employees
					SET
					    LastName = #{lastName},
					    FirstName = #{firstName},
					    Photo = #{photo},
					    Notes = #{notes},
					    BirthDate = #{birth}
					WHERE
					    EmployeeId = #{id}
					""")
	int updateEmployee(MyBean256Employees employee);

	@Update("""
					UPDATE Customers
					SET CustomerName = #{customerName},
					    ContactName = #{contactName},
					    Address = #{address},
					    City = #{city},
					    PostalCode = #{postalCode},
					    Country = #{country}
					WHERE
					    CustomerId = #{id};
					""")
	int updateCustomer(MyBean254Customer customer);
}
