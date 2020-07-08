using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSight_v1.Models
{
    public class Manager
    {
        public List<Account> accountList { get; set; }   //Syntactical sugar getter/setter.
        public List<Site> masterWebList { get; set; }

        public Manager()                            //Dflt cnstr. Sets dynamic lists for accountList and masterWebList
        {
          List<Account> accountList = new List<Account>();
          List<Site> masterWebList = new List<Site>();
        }

        public Manager(List<Account> al, List<Site> mwl)  //parameterized constructor to add to lists
        {
          List<Account> accountList = new List<Account>(al);
          List<Site> masterWebList = new List<Site>(mwl);
        }
        public void DeleteAccount(Account a)        //public void function to delete user account from list
        {
          accountList.Remove(a);
        }
        public void DeleteMasterSite(Site s)        //public void function to delete site from masterWebList
        {
          masterWebList.Remove(s);
        }
        public void DeleteMasterList()             //public void function to clear masterWebList
        {
          masterWebList.Clear();
        }
    }
}
