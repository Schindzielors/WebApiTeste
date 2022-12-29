using System;
using System.Collections.Generic;
using System.Text;

namespace WebAPI.Domain.Mensagem.Entities
{
    public class MensagemDomain
    {
        public int id { get; set; }
        public long id_usuario { get; set; }
        public string mensagem { get; set; }
        public DateTime data { get; set; }
        public bool aguardando_resposta { get; set; }
    }
}
