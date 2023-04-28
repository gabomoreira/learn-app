package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
