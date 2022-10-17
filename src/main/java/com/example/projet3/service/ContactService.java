package com.example.projet3.service;

import com.example.projet3.exception.ContactNotFoundException;
import com.example.projet3.repository.ContactRepository;
import com.example.projet3.repository.EditContact;
import com.example.projet3.repository.entity.Contact;
import com.example.projet3.repository.CreateContact;
import com.example.projet3.repository.entity.User;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
@Service
public class ContactService {

    private ContactRepository contactRepository;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public List<Contact> getAllContacts() {
        return (List<Contact>) this.contactRepository.findAll();
    }


    public List<Contact> getAllContacts(String keyword, User user) {
        if(keyword != null) {
            return this.contactRepository.findByLastnameOrFirstnameOrPhoneNumber(keyword,user.getEmail());
        }

        return this.contactRepository.findAllByUserEmail(user.getEmail());
    }

    public Contact findContactById(Long id) {

        return this.contactRepository.findById(id).get();
    }

    public Contact getContact(Long id) {
        return this.contactRepository
                .findById(id)
                .orElseThrow(() -> new ContactNotFoundException(id));
    }

    public void createContact (CreateContact createContact, User user) {


        Contact c = new Contact();
        c.setLastname(createContact.getLastname());
        c.setFirstname(createContact.getFirstname());
        c.setEmail(createContact.getEmail());
        c.setPhoneNumber(createContact.getPhoneNumber());
        c.setPictureUrl(createContact.getPictureUrl());
        c.setBirthDate(createContact.getBirthDate());
        c.setUser(user);

        this.contactRepository.save(c);
    }

    public void deleteContact(Long id) {
        this.contactRepository.deleteById(id);
    }

    public void editContact (Long id, EditContact editContact) {
        Contact contact = this.contactRepository
                .findById(id)
                .orElseThrow(() -> new ContactNotFoundException(id));

        contact.setLastname(editContact.getLastname());
        contact.setFirstname(editContact.getFirstname());
        contact.setEmail(editContact.getEmail());
        contact.setPhoneNumber(editContact.getPhoneNumber());
        contact.setPictureUrl(editContact.getPictureUrl());
        contact.setBirthDate(editContact.getBirthDate());

        this.contactRepository.save(contact);

    }








}


