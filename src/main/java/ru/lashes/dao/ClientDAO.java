package ru.lashes.dao;

import ru.lashes.entity.Client;

import java.util.List;

public interface ClientDAO {
    public List<Client> getAllClients();

    public void saveClient(Client client);

    public Client getClient(int id);
}
