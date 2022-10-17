package com.example.projet3.repository.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String lastname;

    private String firstname;

    private String email;

    private String phoneNumber;

    private String pictureUrl;

    private LocalDate birthDate;


    public Contact() {
    }

    public Contact(Long id, String lastname, String firstname, String email, String phoneNumber, String pictureUrl, LocalDate birthDate) {
        this.id = id;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.pictureUrl = pictureUrl;
        this.birthDate = birthDate;
    }

    public Contact(String lastname, String firstname, String email, String phoneNumber, String pictureUrl, LocalDate birthDate) {
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.pictureUrl = pictureUrl;
        this.birthDate = birthDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }
}
