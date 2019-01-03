using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using nss.Models;
using nss.Storage;

namespace nss.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        public readonly StudentStorage _storage;

        public StudentController()
        {
            _storage = new StudentStorage();
        }
        
        // GET: api/student
        [HttpGet]
        public IActionResult GetAllStudents()
        {
            return Ok(_storage.GetAllStudents());
        }

        // GET: api/student/5
        [HttpGet("{id}")]
        public IActionResult GetStudent(int id)
        {
            return Ok(_storage.GetStudent(id));
        }

        // POST: api/NSS
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/NSS/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
