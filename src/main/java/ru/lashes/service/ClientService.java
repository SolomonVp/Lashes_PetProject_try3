package ru.lashes.service;

import ru.lashes.entity.Client;

import java.util.List;

public interface ClientService {
    public List<Client> getAllClients();
    public void saveClient(Client client);
}
