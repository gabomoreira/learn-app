package com.gabo.learn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gabo.learn.dto.NotificationDTO;
import com.gabo.learn.entities.Notification;
import com.gabo.learn.entities.User;
import com.gabo.learn.repositories.NotificationRepository;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationRepository repository;
	
	@Autowired
	private AuthService authService;
	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> findAllForCurrentUser(Pageable pageable) {
		User user = authService.autheticated();
		
		Page<Notification> page = repository.findByUser(user, pageable);
		
		return page.map(p -> new NotificationDTO(p));
	}

}
