using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommentManagement_app.Models
{
    public class Comment
    {

        public string Post { get; set; }
        public string Admin { get; set; }
        public DateTime Date { get; set; } 
        public int Like { get; set; } 
        public int DisLike { get; set; } 

    }
}