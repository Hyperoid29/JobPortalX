using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortalX
{
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
           // Response.Write("<script>alert('Please fill out all fields.');</script>");
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from users_table where user_name='" + TextBox4.Text.Trim() + "' AND password='" + TextBox3.Text.Trim() + "'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr .HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(2).ToString() + "');</script>");
                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid User');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
