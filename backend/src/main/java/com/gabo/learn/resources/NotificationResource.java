package com.gabo.learn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gabo.learn.dto.NotificationDTO;
import com.gabo.learn.services.NotificationService;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationResource {

	@Autowired
	private NotificationService service;
	
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> findAllForCurrentUser(Pageable page) {
		Page<NotificationDTO> notifications = service.findAllForCurrentUser(page);
		
		return ResponseEntity.ok().body(notifications);
	}
}
