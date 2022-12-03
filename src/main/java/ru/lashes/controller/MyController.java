package ru.lashes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.lashes.entity.Client;
import ru.lashes.service.ClientService;

import java.util.List;

@Controller
public class MyController {

    @Autowired
    private ClientService clientService;

    @RequestMapping("/")
    public String showAllClients(Model model) {
        List<Client> allClients = clientService.getAllClients();
        model.addAttribute("allCls", allClients);
        return "all-clients";
    }
    @RequestMapping("/addNewClient")
    public String addNewClient(Model model) {
        Client client = new Client();
        model.addAttribute("client", client);
        return "client-Info";
    }
    @RequestMapping("/saveClient")
    public String saveClient(@ModelAttribute("client") Client client) {
        clientService.saveClient(client);
        return "redirect:/";
    }

    @RequestMapping("/updateInfo")
    public String updateClient(@RequestParam("clntId") int id, Model model) {
        Client client = clientService.getClient(id);
        model.addAttribute("client", client);
        return "client-Info";
    }
}
