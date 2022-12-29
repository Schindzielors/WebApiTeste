using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IServiceUpdate<T>
        where T : BaseDomain
    {
        int Update(T model);
    }
}
