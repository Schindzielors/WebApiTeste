using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IServiceGet<T>
        where T : BaseDomain
    {
        T Get(int id);
    }
}
