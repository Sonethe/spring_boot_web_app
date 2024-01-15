package com.example.spring_boot_web_app.controllers;

import com.example.spring_boot_web_app.models.User;
import com.example.spring_boot_web_app.models.enums.Role;
import com.example.spring_boot_web_app.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@PostAuthorize("hasAnyAuthority('ROLE_ADMIN')")
public class AdminController {
    private final UserService userService;

    @GetMapping("/admin")
    public String admin(Model model) {
        model.addAttribute("users", userService.list());

        return "admin";
    }

    @PostMapping("/admin/user/lock/{id}")
    public String userLock(@PathVariable("id") Long id) {
        userService.lockUser(id);

        return "redirect:/admin";
    }

    @PostMapping("/admin/user/edit")
    public String userEdit(@RequestParam("userId") User user, @RequestParam Map<String, String> form) {
        userService.changeUserRole(user, form);

        return "redirect:/admin";
    }

    @GetMapping("/admin/user/edit/{user}")
    public String userEdit(@PathVariable("user") User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "user-edit";
    }
}
