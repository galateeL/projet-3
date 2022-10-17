package com.example.projet3.repository;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CreateUser {

    @NotNull
    private String email;

    @NotNull
    @Size(min = 5, message = "password must be longer than 5 characters")
    private String password;

    private String firstName;

    private String lastname;

    private String pictureUrl;

    public CreateUser() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }
}
