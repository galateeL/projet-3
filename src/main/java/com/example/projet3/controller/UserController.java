package com.example.projet3.controller;

import com.example.projet3.repository.CreateUser;
import com.example.projet3.repository.EditContact;
import com.example.projet3.repository.EditUser;
import com.example.projet3.repository.entity.Contact;
import com.example.projet3.repository.entity.User;
import com.example.projet3.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.security.Principal;

@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/signup")
    public String displaySignUpForm(Model model) {
        model.addAttribute("createUser", new CreateUser());
        return "signUpView";
    }

    @PostMapping("/signup")
    public String signUp(@Valid CreateUser createUser, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("createUser", createUser);
            return "signUpView";
        } else {
            userService.register(createUser);
            return "redirect:/signin";
        }
    }

    @GetMapping("/signin")
    public String displaySignInForm() {
        return "signInView";
    }


    // Display specific account
    @GetMapping("/account")
    public String displaySpecifyAccount(Principal principal, Model model) {
        String email = principal.getName();
        User user = userService.findUserByEmail(email);
        model.addAttribute("user", user);
        return "accountDetail";
    }


    // Edit specific account - display form
    @GetMapping("/account-edit")
    public String editSpecifyAccount(Principal principal, Model model) {
        String email = principal.getName();
        User user = userService.findUserByEmail(email);
        model.addAttribute("user", user);
        return "editAccountModal";
    }


    // Edit specific account
    @PostMapping("/account-edit")
    public String editSpecifyAccount(Principal principal, EditUser editUser) {
        String email = principal.getName();
        userService.editUser(editUser, email);
        return "redirect:/account";
    }


    //        User user = userService.findUserByEmail(email);
//        Long id = user.getId();


}






