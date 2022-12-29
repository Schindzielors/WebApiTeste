using System;
using System.Collections.Generic;
using System.Text;

namespace WebAPI.Domain.Interfaces
{
    public interface IRepositoryDelete
    {
        int Delete(int id);
    }
}
