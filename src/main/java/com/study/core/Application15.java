package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application15 {
	public static void main(String[] args) {
		BeanFactory bf = SpringApplication.run(Application15.class, args);

		MyClass151 b1 = bf.getBean(MyClass152.class).getDependancy();

		System.out.println("b1 = " + b1);
	}
}

@Component
class MyClass151 {
}

@Component
@Getter
class MyClass152 {

	private MyClass151 dependancy;

	@Autowired
	public void setDependancy(MyClass151 dependancy) {
		this.dependancy = dependancy;
	}

}