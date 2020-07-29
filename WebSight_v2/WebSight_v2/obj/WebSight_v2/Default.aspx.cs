using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Web.Services.Description;
using HtmlAgilityPack;
using Fizzler.Systems.HtmlAgilityPack;
using System.Net;
using System.Windows.Forms;

namespace WebSight_v1.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public object TextBox1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string enteredtext;
            enteredtext = (sender as System.Web.UI.WebControls.TextBox).Text; //get text from user input
           // Response.Write(enteredtext);

          
          /*  var web = new HtmlWeb();
            var doc = web.Load(enteredtext);
            var page = doc.DocumentNode;


            foreach(var item in page.QuerySelectorAll("div.item"))
            {
                var date = DateTime.Parse(item.QuerySelector("span:eq(2)").InnerText);
                Response.Write(date);

            }*/

            using (WebClient client = new WebClient())
            {
                string html = client.DownloadString(enteredtext);   //download html into a string
                MessageBox.Show(html);                               //print the string 
            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Response.Redirect("login.aspx");
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
          //  Response.Redirect("alerts.aspx");

        }

        protected void TextBox1_TextChanged2(object sender, EventArgs e)
        {
            string enteredtext;
            enteredtext = (sender as System.Web.UI.WebControls.TextBox).Text;
          //  Response.Write(enteredtext);

            /*
            var web = new HtmlWeb();
            var doc = web.Load(enteredtext);
            var page = doc.DocumentNode;


            foreach (var item in page.QuerySelectorAll("div.item"))
            {
                var title = item.QuerySelector("h3:not(.share)").InnerText;
                var date = DateTime.Parse(item.QuerySelector("span:eq(2)").InnerText);
                var description = item.QuerySelector("span:has(b)").InnerHtml;
                Response.Write(title);
                Response.Write(date);
                Response.Write(description);
            }
            */

            using (WebClient client = new WebClient())
            {
                string html = client.DownloadString(enteredtext);   //download html into a string
                MessageBox.Show(html);                               //print the string 
            }

        }
    }
}
