package com.study.domain;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
public class MyBean333 {
	private String title;
	private String name;
	private Integer age;
	private BigDecimal price;
	private LocalDate published;
	private LocalDateTime inserted;
}
