package com.example.projet3.repository;

import com.example.projet3.repository.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {


}
