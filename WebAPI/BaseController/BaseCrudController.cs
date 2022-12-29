using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebAPI.Domain.Base;
using WebAPI.Domain.Interfaces;

namespace WebAPI.BaseController
{
    [Route("api/[controller]")]
    [ApiController]
    public class BaseCrudController<T, Args> : ControllerBase
        where T : BaseDomain
        where Args : BaseArgs
    {
        private readonly IServiceBase<T, Args> service;
        public BaseCrudController(IServiceBase<T, Args> service)
        {
            this.service = service;
        }

        [HttpGet("{Id}")]
        public IActionResult Get(int Id)
        {
            try
            {
                return Ok(service.Get(Id));
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"{ex.Message} - {ex.StackTrace}");
            }
        }

        [HttpGet]
        public IActionResult Get([FromBody]Args args)
        {
            try
            {
                return Ok(service.GetAll(args));
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"{ex.Message} - {ex.StackTrace}");
            }
        }

        [HttpPost]
        public IActionResult Post([FromBody]T model)
        {
            try
            {
                return Ok(service.Insert(model));
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"{ex.Message} - {ex.StackTrace}");
            }
        }

        [HttpPut]
        public IActionResult Put([FromBody]T model)
        {
            try
            {
                return Ok(service.Update(model));
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"{ex.Message} - {ex.StackTrace}");
            }
        }

        [HttpDelete("{Id}")]
        public IActionResult Delete(int Id)
        {
            try
            {
                return Ok(service.Delete(Id));
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"{ex.Message} - {ex.StackTrace}");
            }
        }
    }
}