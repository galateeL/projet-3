package com.example.projet3.exception;

public class ContactNotFoundException extends RuntimeException {
    public ContactNotFoundException(Long id) {
        super ("Contact with id" + id + " does not exist");
    }
}
