package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
