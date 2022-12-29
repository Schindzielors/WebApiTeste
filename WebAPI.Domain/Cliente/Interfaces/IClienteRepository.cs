using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Interfaces;

namespace WebAPI.Domain.Cliente.Interfaces
{
    public interface IClienteRepository : 
        IRepositoryInsert<ClienteDomain>,
        IRepositoryGet<ClienteDomain>,
        IRepositoryGetAll<ClienteDomain, ClienteArgs>,
        IRepositoryUpdate<ClienteDomain>,
        IRepositoryDelete
    {
    }
}
