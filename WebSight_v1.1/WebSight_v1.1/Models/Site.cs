using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSight_v1.Models
{
    public class Site
    {
        public int siteID { get; set; }   //Syntactical sugar getter/setter.
        public string URL { get; set; }
        public string nickName { get; set; }
        public DateTime dateAdded { get; }
        public DateTime dateExpires { get; set; }

        public Site()                     //Dflt cnstr. Sets an invalid ID,
        {                                 // current datetime, empty URL name,
            siteID = -1;                  // and sets to expire in 24hrs.
            URL = String.Empty;
            dateAdded = DateTime.Now;
            dateExpires = DateTime.Now.AddDays(1);
            nickName = String.Empty;
        }

        public Site(int id, string name, DateTime expires)
        {
            siteID = id;
            nickName = name;
            dateAdded = DateTime.Now;
            dateExpires = expires;
        }
    }
}