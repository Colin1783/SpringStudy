package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Employees;
import com.study.domain.MyBean256Product;
import com.study.mapper.Mapper02;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main31")
@RequiredArgsConstructor
public class Controller31 {

	private final Mapper02 mapper;

	@GetMapping("sub1")
	public void method1() {
		String s = mapper.selectNow();
		System.out.println("s = " + s);
	}

	@GetMapping("sub2")
	String method2(Integer id) {
		MyBean254Customer customer = mapper.selectCustomer();

		System.out.println("customer = " + customer);
		return null;
	}

	@GetMapping("sub3")
	public void method3() {
		MyBean254Customer customer = mapper.selectOneCustomer();
		System.out.println("customer = " + customer);
	}

	@GetMapping("sub5")
	public void method5() {
		MyBean256Employees e = mapper.selectOneEmployee1();
		System.out.println("e = " + e);
	}

	@GetMapping("sub6")
	public void method6() {
		MyBean256Employees e = mapper.selectOneEmployee2(5);
		System.out.println("e = " + e);
	}

	@GetMapping("sub7")
	public void method7(Integer id) {
		MyBean256Employees e = mapper.selectOneEmployee2(id);
		System.out.println("e = " + e);
	}

	@GetMapping("sub8")
	public void method8(Integer id) {
		MyBean254Customer c = mapper.selectOneCustomer4(id);
		System.out.println("c = " + c);
	}

	@GetMapping("sub9")
	public void method9() {
		List<MyBean254Customer> c = mapper.selectAllCustomer1();
		System.out.println("c = " + c.size());
	}

	@GetMapping("sub10")
	public void method10() {
		List<MyBean256Employees> e = mapper.selectAllEmployee1();
		e.forEach(System.out::println);
	}

	@GetMapping("sub11")
	public void method11() {
		List<MyBean254Customer> c = mapper.selectCustomersByCountry("uk", "usa");
		c.forEach(System.out::println);
	}

	@GetMapping("sub12")
	public void method12(double min, double max) {
		List<MyBean256Product> p = mapper.selectProductByPrice(5, 55);
		p.forEach(System.out::println);
	}
}



