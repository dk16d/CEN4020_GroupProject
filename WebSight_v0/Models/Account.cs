using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSight_v0.Models
{
    public class Account
    {
        public int userID { get; set; }   //Syntactical sugar getter/setter.
        public string name { get; set; }
        public string password { get; set; }
        public List<Site> webList { get; set; }

        public Account()                     //Dflt cnstr. Sets an invalid userID,
        {                                 // empty name, empty password,
            userID = -1;                  // and creates dynamic list of Site objects.
            name = String.Empty;
            password = String.Empty;
            List<Site> webList = new List<Site>();
        }

        public Account(int id, string n, string pw, List<Site> wl)
        {                               //parameterized constructor to add
            userID = id;                //userID, name, password, and webList
            name = n;
            password = pw;
            List<Site> webList = new List<Site>(wl);
        }
        public void changeName(string n)  //public void function to change user's name
        {
            name = n;
        }
        public void changePass(string pw) //public void function to change user's password
        {
            password = pw;
        }
        public void AddSite(Site s)  //public void function to add Site object to webList
        {
            webList.Add(s);
        }
        public void RemoveSite(Site s)  //public void function to remove Site object to webList
        {
            webList.Remove(s);
        }
        public void DeleteList()   //public void function clear webList
        {
            webList.Clear();
        }
    }
}
