package com.example.demo.api;

import com.example.demo.entity.UserEntity;
import com.example.demo.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping
    public List<UserEntity> findAll() {
        return userService.findAll();
    }

    @PostMapping("create")
    public UserEntity create(final @RequestBody UserEntity userEntity) {
        return userService.save(userEntity);
    }
}
