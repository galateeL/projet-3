package com.example.projet3.controller;

import com.example.projet3.repository.CreateContact;
import com.example.projet3.repository.EditContact;
import com.example.projet3.repository.entity.Contact;
import com.example.projet3.service.ContactService;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.Arrays;
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

    // Delete specific contact
    @PostMapping("/delete/{id}")
    public String deleteContact(@PathVariable(value="id") Long id) {
        contactService.deleteContact(id);
        return "redirect:/contacts/all";
    }

    // Add contact - Display addContact Form
    @GetMapping("/add")
    public String displayAddContactForm() {
        return "addContactForm";
    }

    // Add contact - Save in DB
    @PostMapping("/add")
    public String addContact(CreateContact createContact) {
        contactService.createContact(createContact);
        return "redirect:/contacts/all";

    }

    // Edit contact - display form
    @GetMapping("/edit/{id}")
    public String editContact(Model model, @PathVariable Long id) {
       Contact contact = contactService.findContactById(id);
        model.addAttribute("contact", contact);
        return "editContactModal";
    }

    // Edit contact
    @PostMapping("/edit/{id}")
    public String editContact(EditContact editContact, @PathVariable Long id) {
        contactService.editContact(id, editContact);
        return "redirect:/contacts/details/{id}";
}





}
