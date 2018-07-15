using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace BusinessLayer
{
    public class User
    {
        public int ID { get; set; }
        [Required]
        public string username { get; set; }
        [Required]
        public string password { get; set; }
        public string fullname { get; set; }
    }
}
