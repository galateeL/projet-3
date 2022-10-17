package com.example.projet3;

import com.example.projet3.repository.ContactRepository;
import com.example.projet3.repository.entity.Contact;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.time.LocalDate;

@SpringBootApplication
public class Projet3Application implements CommandLineRunner {

    private ContactRepository contactRepository;

    public Projet3Application(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public static void main(String[] args) {

        SpringApplication.run(Projet3Application.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("COMMAND LINE RUNNER");

        Contact contact1 = new Contact("Ankaoua", "Maud", "m.ankaoua@gmail.com", "0625487633", "https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", LocalDate.of(1980, 12,05));
        contactRepository.save(contact1);

        Contact contact2 = new Contact("Jean", "Mary", "m.jean@gmail.com", "0625787633", "https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", LocalDate.of(1985, 05,15));
        contactRepository.save(contact2);



    }
}
