package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.Topic;

@Repository
public interface TopicRepository extends JpaRepository<Topic, Long> {

}
