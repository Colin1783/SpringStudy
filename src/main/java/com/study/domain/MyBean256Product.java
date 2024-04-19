package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyBean256Product {
	int id;
	String name;
	int supplierId;
	int categoryId;
	String unit;
	double price;
}
