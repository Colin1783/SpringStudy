package com.study.domain;

import lombok.Data;

@Data
public class MyBean251 {
	private String id;
	private String lastName;
	private String firstName;
	private String birthDate;
	private String photo;
	private String notes;

	public MyBean251(String id, String lastName, String firstName, String birthDate, String photo, String notes) {
		this.id = id;
		this.lastName = lastName;
		this.firstName = firstName;
		this.birthDate = birthDate;
		this.photo = photo;
		this.notes = notes;
	}
}
