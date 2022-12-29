using System;
using System.Collections.Generic;
using System.Text;
using WebAPI.Domain.Base;

namespace WebAPI.Domain.Cliente.Entities
{
    public class ClienteDomain : BaseDomain
    {
        public string Nome { get; set; }
        public short Idade { get; set; }
        public string Email { get; set; }
        public DateTime DataNascimento { get; set; }
    }
}
