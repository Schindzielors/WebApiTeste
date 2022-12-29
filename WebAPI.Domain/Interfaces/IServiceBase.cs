using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Interfaces
{
    public interface IServiceBase<T, Args> : 
        IServiceGet<T>, 
        IServiceGetAll<T, Args>,
        IServiceInsert<T>,
        IServiceUpdate<T>,
        IServiceDelete
            where T : BaseDomain
            where Args: BaseArgs
    {
    }
}
