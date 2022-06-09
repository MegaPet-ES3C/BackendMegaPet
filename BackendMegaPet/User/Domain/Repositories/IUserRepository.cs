﻿namespace BackendMegaPet.User.Domain.Repositories;
using BackendMegaPet.User.Domain.Models;
public interface IUserRepository
{
    Task<IEnumerable<User>> ListAsync();
    Task AddAsync(User user);
    Task<User> FindByIdAsync(int id);
    void Update(User user);
    void Remove(User user);
}