package com.study.core;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application16 {
	public static void main(String[] args) {
		BeanFactory bf = SpringApplication.run(Application16.class, args);

		MyClass161 b1 = bf.getBean(MyClass161.class);
		b1.action();
	}
}

@Component
@RequiredArgsConstructor
class MyClass161 {
	private final MyInterface161 field;

	public void action() {
		field.someMethod();
	}
}

@Component
interface MyInterface161 {
	void someMethod();
}


class MyClass162 {
	public void someMethod() {
		System.out.println("some action for this");
	}
}

@Component
class MyClass163 implements MyInterface161 {
	public void someMethod() {
		System.out.println("some action for this2");
	}
}