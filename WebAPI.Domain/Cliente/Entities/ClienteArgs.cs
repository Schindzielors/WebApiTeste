using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Cliente.Entities
{
    public class ClienteArgs : BaseArgs
    {
        public string Nome { get; set; }
    }
}
