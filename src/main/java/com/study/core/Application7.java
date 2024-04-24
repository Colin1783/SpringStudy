package com.study.core;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application7 {
	public static void main(String[] args) {
		BeanFactory context = SpringApplication.run(Application7.class, args);

		Object b1 = context.getBean("myClass71");
		Object b2 = context.getBean(MyClass72.class);

		System.out.println("b1 = " + b1);
		System.out.println("b2 = " + b2);

	}
}

@Component
class MyClass71 {

}

//@Component 어노테이션을 붙일 수 없는 클래스로 Spring Bean 만들기
@Configuration
class MyConfiguration7 {
	@Bean
	public MyClass72 someMethod1() {
		return new MyClass72();
	}
}


class MyClass72 {

}