package com.example.spring_boot_web_app.repositories;

import com.example.spring_boot_web_app.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

//для работы с данным объектом
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
}
