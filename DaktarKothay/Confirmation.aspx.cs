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

    public partial class Confirmation : System.Web.UI.Page
    {
        int flag = 0;
        public static string docid, id, id3, name3,appid;
        static int id2;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con4 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
            if (Session["user"] == null)
            {
                Server.Transfer("userlogin.aspx");
            }

            else
            {
                string query4 = "select * from [user] where email='" + Session["user"] + "'";
                SqlCommand cmd4 = new SqlCommand(query4, con4);
                con4.Open();
                using (SqlDataReader oReader = cmd4.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        id3 = oReader["Id"].ToString();
                        name3 = oReader["name"].ToString();

                    }

                    con4.Close();
                }
                id2 = Convert.ToInt32(id3);
                LabelPat.Text = name3;
                Labelt.Text = Session["time"].ToString();
                TextName.Text = Session["docName"].ToString();
                TextDept.Text = Session["deptName"].ToString();
                TextHos.Text = Session["hosName"].ToString();
                LabelDay.Text = Session["day"].ToString();
                SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
                DataTable dt3 = new DataTable();
                string query3 = "select * from [appointment] where patID=" + id2 + " AND docName='" + Session["docName"] + "' AND [check]='NO'";
                SqlCommand cmd3 = new SqlCommand(query3, con3);
                con3.Open();
                using (SqlDataReader oReader = cmd3.ExecuteReader())
                {
                    while (oReader.Read())
                    {
                        appid= oReader["appointID"].ToString();


                    }

                    con3.Close();
                }
                Labelappid.Text=appid;



                //Labelappid.Text = Session["appId"].ToString();






                if (LabelDay.Text=="Sunday")
                {
                    Labeldate.Text = "11.2.18";
                }
                else if (LabelDay.Text == "Monday")
                {
                    Labeldate.Text = "12.2.18";
                }
                else if (LabelDay.Text == "Tuesday")
                {
                    Labeldate.Text = "13.2.18";
                }
                if (LabelDay.Text == "Wednesday")
                {
                    Labeldate.Text = "14.2.18";
                }
                if (LabelDay.Text == "Thursday")
                {
                    Labeldate.Text = "15.2.18";
                }
                if (LabelDay.Text == "Friday")
                {
                    Labeldate.Text = "16.2.18";
                }
                if (LabelDay.Text == "Saturday")
                {
                    Labeldate.Text = "17.2.18";
                }

            }
        }
    }
}