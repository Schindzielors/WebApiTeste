using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Cliente.Interfaces;

namespace WebAPI.Service.Cliente
{
    public class ClienteService : IClienteService
    {
        private readonly IClienteRepository repository;
        public ClienteService(IClienteRepository repository)
        {
            this.repository = repository;
        }

        public int Delete(int id)
        {
            return repository.Delete(id);
        }

        public ClienteDomain Get(int id)
        {
            return repository.Get(id);
        }

        public IEnumerable<ClienteDomain> GetAll(ClienteArgs args)
        {
            return repository.GetAll(args);
        }

        public int Insert(ClienteDomain model)
        {
            return repository.Insert(model);
        }

        public int Update(ClienteDomain model)
        {
            return repository.Update(model);
        }
    }
}
