package com.example.spring_boot_web_app.repositories;

import com.example.spring_boot_web_app.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
