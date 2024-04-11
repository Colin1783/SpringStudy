package com.study.domain;

public class MyBean121 {
	private String name;
	private String company;
	private Integer price;
	private String country;

	public MyBean121() {
	}

	public MyBean121(String name, String company, Integer price, String country) {
		this.company = company;
		this.country = country;
		this.name = name;
		this.price = price;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
}
