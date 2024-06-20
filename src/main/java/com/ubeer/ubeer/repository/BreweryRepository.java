package com.ubeer.ubeer.repository;

import com.ubeer.ubeer.entity.BreweryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface BreweryRepository extends JpaRepository<BreweryEntity, Long> {

    @Query("SELECT b FROM BreweryEntity b LEFT JOIN FETCH b.images")
    List<BreweryEntity> findAllWithImages();
}