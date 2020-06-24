using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace TodoApp.Api.Features.Todos
{
    [Route("[controller]")]
    [ApiController]
    public class TodosController : ControllerBase
    {
        private readonly List<string> _todos = new List<string>
        {
            "One",
            "two"
        };
        private readonly IConfiguration _configuration;

        public TodosController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public ActionResult<List<string>> GetTodos()
        {
            return Ok(_todos);
        }
    }
}
