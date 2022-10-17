package com.example.projet3.service;

import com.example.projet3.repository.CreateUser;
import com.example.projet3.repository.UserRepository;
import com.example.projet3.repository.entity.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void register(CreateUser createUser) {
       // BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


        User newUser = new User();
        newUser.setEmail(createUser.getEmail());
        //newUser.setPassword(passwordEncoder.encode(createUser.getPassword()));
        newUser.setFirstName(createUser.getFirstName());
        newUser.setLastname(createUser.getLastname());
        newUser.setPictureUrl(createUser.getPictureUrl());

        this.userRepository.save(newUser);

    }
}
