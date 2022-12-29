using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebAPI.BaseController;
using WebAPI.Domain.Cliente.Entities;
using WebAPI.Domain.Interfaces;

namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : BaseCrudController<ClienteDomain, ClienteArgs>
    {
        public ClienteController(IServiceBase<ClienteDomain, ClienteArgs> service) : base(service)
        {
        }
    }
}