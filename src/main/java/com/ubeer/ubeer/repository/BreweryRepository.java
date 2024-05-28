package com.ubeer.ubeer.repository;

import com.ubeer.ubeer.entity.BreweryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BreweryRepository extends JpaRepository<BreweryEntity, Long> {
}