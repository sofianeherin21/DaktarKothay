using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DaktarKothay
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public static string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] != null)
            {
                s = Session["user"].ToString();
            }
            else
            {
                s = "User Login";
            }

           
        }
        
    }
}