package com.gabo.learn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gabo.learn.entities.User;
import com.gabo.learn.repositories.UserRepository;
import com.gabo.learn.services.exceptions.ForbiddenException;
import com.gabo.learn.services.exceptions.UnauthorizedException;

@Service
public class AuthService {

	@Autowired
	UserRepository repository;
	
	@Transactional(readOnly = true)
	public User autheticated() {
		try {
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			return repository.findByEmail(email);
		} catch (Exception e) {
			throw new UnauthorizedException("Invalid user");
		}
	}
	
	public void validateSelfOrAdmin(Long userId) {
		User user = autheticated();
		
		if (!user.getId().equals(userId) && !user.hasRole("ROLE_ADMIN")) {
			throw new ForbiddenException("Access denied");
		}
	}
}
