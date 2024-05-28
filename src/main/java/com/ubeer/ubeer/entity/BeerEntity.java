package com.ubeer.ubeer.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "beer")
public class BeerEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "brewery_id", referencedColumnName = "ID")
    private BreweryEntity brewery;

    @Column(name = "type", nullable = false)
    private String type;

    @OneToMany(mappedBy = "beer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ImageEntity> images;

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BreweryEntity getBrewery() {
        return brewery;
    }

    public void setBrewery(BreweryEntity brewery) {
        this.brewery = brewery;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<ImageEntity> getImage() {
        return images;
    }

    public void setImage(List<ImageEntity> images) {
        this.images = images;
    }
}
