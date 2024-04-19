package com.study.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MyBean261Orders {
	int id;
	int customerId;
	int employeeId;
	String orderDate;
	int shipperId;

}
