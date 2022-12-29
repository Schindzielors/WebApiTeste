using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Interfaces;

namespace WebAPI.Domain.Cliente.Interfaces
{
    public interface IClienteService : IServiceBase<ClienteDomain, ClienteArgs>
    {
    }
}
