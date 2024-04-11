package com.study.domain;

import java.util.List;

public class MyBean122 {
	private String name;
	private String country;
	private String team;
	private String event;
	private List<String> position;

	public MyBean122() {
	}

	public MyBean122(String name, String country, String team, String event, List<String> position) {
		this.name = name;
		this.country = country;
		this.team = team;
		this.event = event;
		this.position = position;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<String> getPosition() {
		return position;
	}

	public void setPosition(List<String> position) {
		this.position = position;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}
}
