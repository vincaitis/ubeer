package com.ubeer.ubeer.service;

import com.ubeer.ubeer.entity.BeerEntity;
import com.ubeer.ubeer.repository.BeerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BeerService {

    @Autowired
    private BeerRepository beerRepository;

    public List<BeerEntity> getAllBeers() {
        return beerRepository.findAll();
    }

    public BeerEntity getBeerById(Long id) {
        return beerRepository.findById(id).orElse(null);
    }

    public BeerEntity createBeer(BeerEntity beer) {
        return beerRepository.save(beer);
    }

    public BeerEntity updateBeer(Long id, BeerEntity beerDetails) {
        BeerEntity beer = beerRepository.findById(id).orElse(null);
        if (beer != null) {
            beer.setName(beerDetails.getName());
            beer.setBrewery(beerDetails.getBrewery());
            beer.setType(beerDetails.getType());
            beer.setDescription(beerDetails.getDescription());
            beer.setImage(beerDetails.getImage());
            return beerRepository.save(beer);
        }
        return null;
    }

    public void deleteBeer(Long id) {
        beerRepository.deleteById(id);
    }
}