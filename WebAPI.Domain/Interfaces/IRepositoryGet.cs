using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IRepositoryGet<T>
        where T : BaseDomain
    {
        T Get(int id);
    }
}
