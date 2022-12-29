using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IServiceGetAll<T, Args>
        where T : BaseDomain
        where Args : BaseArgs
    {
        IEnumerable<T> GetAll(Args args);
    }
}
