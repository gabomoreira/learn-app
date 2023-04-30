package com.gabo.learn.dto;

import java.io.Serializable;
import java.time.Instant;

import com.gabo.learn.entities.Notification;

public class NotificationDTO implements Serializable{

	private static final long serialVersionUID = 1L;

	private String text;
	private Instant moment;
	private boolean read;
	private String route;
	private Long userId;
	
	public NotificationDTO() {
		
	}

	public NotificationDTO(String text, Instant moment, boolean read, String route, Long userId) {
		this.text = text;
		this.moment = moment;
		this.read = read;
		this.route = route;
		this.userId = userId;
	}

	public NotificationDTO(Notification entity) {
		this.text = entity.getText();
		this.moment = entity.getMoment();
		this.read = entity.isRead();
		this.route = entity.getRoute();
		this.userId = entity.getUser().getId();
	}
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Instant getMoment() {
		return moment;
	}

	public void setMoment(Instant moment) {
		this.moment = moment;
	}

	public boolean isRead() {
		return read;
	}

	public void setRead(boolean read) {
		this.read = read;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
}
