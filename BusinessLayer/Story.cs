using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
     public class Story
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Story Title")]
        public string Title { get; set; }
        [Required]
        [Display(Name = "Story")]
        public string Body { get; set; }
        [Required]
        [Display(Name = "Date Posted")]
        public string DatePosted { get; set; }
        [Display(Name = "Author ID")]
        public string authorID { get; set; }
    }
}
