package ru.lashes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.lashes.dao.ClientDAO;
import ru.lashes.entity.Client;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private ClientDAO clientDAO;

    @RequestMapping("/")
    public String showAllClients(Model model) {
        List<Client> allClients = clientDAO.getAllClients();
        model.addAttribute("allCls", allClients);
        return "all-clients";
    }
}
