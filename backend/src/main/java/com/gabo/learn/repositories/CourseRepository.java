package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {

}
