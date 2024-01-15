package com.example.spring_boot_web_app.repositories;

import com.example.spring_boot_web_app.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
