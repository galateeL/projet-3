package com.example.projet3.exception;

public class UserNotFoundException extends RuntimeException {
//    public UserNotFoundException(Long id) {
//
//            super ("Contact with id" + id + " does not exist");
//
//    }

    public UserNotFoundException(String email) {

        super ("Contact with email" + email + " does not exist");

    }
}
