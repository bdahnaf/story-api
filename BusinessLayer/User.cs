using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BusinessLayer
{
    public class User
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Username")]
        public string username { get; set; }
        [Required]
        [Display(Name = "Password")]
        public string password { get; set; }
        [NotMapped]
        [Compare("password")]
        [Display(Name = "Confirm Password")]
        public string confirmPassword { get; set; }
        [Required]
        [Display(Name = "Full Name")]
        public string fullname { get; set; }
    }
}
