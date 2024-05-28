package com.ubeer.ubeer.service;

import com.ubeer.ubeer.entity.ImageEntity;
import com.ubeer.ubeer.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageService {

    @Autowired
    private ImageRepository imageRepository;

    public List<ImageEntity> getAllImages() {
        return imageRepository.findAll();
    }

    public ImageEntity getImageById(Long id) {
        return imageRepository.findById(id).orElse(null);
    }

    public ImageEntity createImage(ImageEntity image) {
        return imageRepository.save(image);
    }

    public ImageEntity updateImage(Long id, ImageEntity image) {
        image.setId(id);
        return imageRepository.save(image);
    }

    public void deleteImage(Long id) {
        imageRepository.deleteById(id);
    }
}