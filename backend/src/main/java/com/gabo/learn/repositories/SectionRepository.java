package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.Section;

@Repository
public interface SectionRepository extends JpaRepository<Section, Long> {

}
