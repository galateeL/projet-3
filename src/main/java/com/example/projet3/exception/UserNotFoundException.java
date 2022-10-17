package com.example.projet3.exception;

public class UserNotFoundException extends RuntimeException {

    public UserNotFoundException(String email) {

        super ("Contact with email" + email + " does not exist");

    }
}
