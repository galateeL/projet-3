package com.example.projet3.repository;

import com.example.projet3.repository.entity.Contact;
import com.example.projet3.repository.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.awt.print.Book;
import java.util.List;

public interface ContactRepository extends CrudRepository<Contact, Long> {

    @Query("SELECT c FROM Contact c WHERE c.lastname LIKE %?1%")
    List<Contact> findAllByLastname(String keyword);

    @Query("SELECT c FROM Contact c WHERE (c.lastname LIKE %?1% OR c.firstname LIKE %?1% OR c.phoneNumber LIKE %?1% ) AND  c.user.email = ?2")
    List<Contact> findByLastnameOrFirstnameOrPhoneNumber(String keyword, String email);

    @Query("SELECT c FROM Contact c WHERE c.user.email = :email")
    List<Contact> findAllByUserEmail(String email);

}
