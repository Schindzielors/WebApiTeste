using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IRepositoryUpdate<T>
        where T : BaseDomain
    {
        int Update(T model);
    }
}
