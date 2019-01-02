using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dapper;
using nss.Models;

namespace nss.Storage
{
    public class StudentStorage
    {
        readonly string connectionString = "Server = (local); Database=nss; Trusted_Connection=True";

        public IEnumerable<Student> GetAllStudents()
        {
            using (var db = new SqlConnection(connectionString))
            {
                db.Open();
                var result = db.Query<Student>(
                    @"SELECT * FROM Student"  
                );
                return result;
            }
        }

        public IEnumerable<Student> GetStudent(int id)
        {
            using (var db = new SqlConnection(connectionString))
            {
                db.Open();
                var result = db.Query<Student>(
                    @"SELECT * FROM Student
                    WHERE Student.Id = @id", new { id }
                );
                return result;
            }
        }
    }
}
