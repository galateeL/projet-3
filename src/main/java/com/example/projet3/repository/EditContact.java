package com.example.projet3.repository;

import com.example.projet3.repository.entity.Contact;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class EditContact {

    private int id;

    private String lastname;

    private String firstname;

    private String email;

    private String phoneNumber;

    private String pictureUrl;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birthDate;

    public EditContact() {
    }

//    public EditContact(int id, String lastname, String firstname, String email, String phoneNumber, String pictureUrl, LocalDate birthDate) {
//        this.id = id;
//        this.lastname = lastname;
//        this.firstname = firstname;
//        this.email = email;
//        this.phoneNumber = phoneNumber;
//        this.pictureUrl = pictureUrl;
//        this.birthDate = birthDate;
//    }
//
//public Contact toContact(){
//        Contact c = new Contact();
//
//        c.setLastname(this.lastname);
//        c.setFirstname(this.firstname);
//        c.setEmail(this.email);
//        c.setPictureUrl(this.pictureUrl);
//        c.setPhoneNumber(this.phoneNumber);
//        c.setBirthDate(this.birthDate);
//        return c;
//}

    public int getId() {
        return id;
    }

    public void setId(int id) {
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
