package com.example.projet3;

import com.example.projet3.repository.ContactRepository;
import com.example.projet3.repository.UserRepository;
import com.example.projet3.repository.entity.Contact;
import com.example.projet3.repository.entity.User;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.time.LocalDate;

@SpringBootApplication
public class Projet3Application implements CommandLineRunner {

    private ContactRepository contactRepository;
    private UserRepository userRepository;

    public Projet3Application(ContactRepository contactRepository, UserRepository userRepository) {
        this.contactRepository = contactRepository;
        this.userRepository = userRepository;
    }

    public static void main(String[] args) {

        SpringApplication.run(Projet3Application.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("COMMAND LINE RUNNER");


        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


        User user1 = new User("j.laneige@gmail.com",passwordEncoder.encode("12345"), "Jean", "Laneige", "https://images.unsplash.com/photo-1548449112-96a38a643324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" );
        userRepository.save(user1);

        User user2 = new User("l.laroue@gmail.com", passwordEncoder.encode("laroue"),"Louise", "Laroue","https://plus.unsplash.com/premium_photo-1661767329669-2ff46c34fffa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80");
        userRepository.save(user2);


        Contact contact1 = new Contact("Ankaoua", "Maud", "m.ankaoua@gmail.com", "0625487633", "https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", LocalDate.of(1980, 12,05), user1);
        contactRepository.save(contact1);

        Contact contact2 = new Contact("Allegro", "Jeanne", "j.allegrogmail.com", "0625787633", "https://images.unsplash.com/photo-1592621385612-4d7129426394?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", LocalDate.of(1985, 05,15), user1);
        contactRepository.save(contact2);

        Contact contact3 = new Contact("Meunier", "Jean-Paul", "jp.meunier@gmail.com", "0725787658", "https://images.unsplash.com/photo-1537099605592-8e7ccefcb0ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80", LocalDate.of(1949, 01,28), user2);
        contactRepository.save(contact3);
    }
}
