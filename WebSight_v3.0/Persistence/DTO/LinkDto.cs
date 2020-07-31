using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WebSight_v3.Persistence.DTO
{
    public class LinkDto
    {
        public int Id { get; set; }
        public string URL { get; set; }
        public string Nickname { get; set; }
    }
}