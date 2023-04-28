package com.gabo.learn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gabo.learn.entities.Offer;

@Repository
public interface OfferRepository extends JpaRepository<Offer, Long> {

}
