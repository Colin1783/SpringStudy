package com.study.core;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application9 {
	public static void main(String[] args) {
		BeanFactory context = SpringApplication.run(Application9.class, args);
		MyClass91 b1 = context.getBean(MyClass91.class);
		MyClass92 b2 = context.getBean(MyClass92.class);

		MyClass91 b3 = b2.getMyClass91();

		System.out.println("b1 = " + b1);
		System.out.println("b2 = " + b2);
		System.out.println("b3 = " + b3);
	}
}

@Component
class MyClass91 {
}

@Component
@Getter
@Setter
class MyClass92 {

	private MyClass91 myClass91;// dependency

	public MyClass92(MyClass91 obj) {
		this.myClass91 = obj;
	}
}
