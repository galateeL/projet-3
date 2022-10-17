package com.example.projet3.controller;

import com.example.projet3.repository.entity.Contact;
import com.example.projet3.service.ContactService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.List;

@Controller
@RequestMapping("/contacts")
public class ContactController {

    private ContactService contactService;
    public ContactController(ContactService contactService) {
        this.contactService = contactService;

    }

    //Display all contacts
    @GetMapping("/all")
    public String displayAllContacts(Model model, @Param("keyword") String keyword){
        List<Contact> contactList = contactService.getAllContacts(keyword);
        model.addAttribute("contacts", contactList);
        return "contactList";
    }

    //Display specific contact
    @GetMapping("/details/{id}")
    public String displaySpecifyContact(Model model, @PathVariable Long id) {
        Contact contact = contactService.findContactById(id);
        model.addAttribute("contact", contact);
        return "contactDetail";
    }


}
