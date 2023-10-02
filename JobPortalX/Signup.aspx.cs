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
    public partial class Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //sign up functionality

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
               

                // Check if any of the fields are empty
                if (string.IsNullOrEmpty(TextBox8.Text.Trim()) || string.IsNullOrEmpty(TextBox1.Text.Trim()) || string.IsNullOrEmpty(TextBox9.Text.Trim()))
                {
                    Response.Write("<script>alert('Please fill out all fields.');</script>");
                }
                else
                {
                    // Check if the email already exists in the database
                    if (!IsEmailAlreadyRegistered(TextBox1.Text.Trim()))
                    {
                        // If the email is not already registered, proceed with the insert
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        SqlCommand cmd = new SqlCommand("INSERT INTO users_table(user_name, email, password) VALUES (@user_name, @email, @password)", con);
                        cmd.Parameters.AddWithValue("@user_name", TextBox8.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Email already registered. Please use a different email address.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private bool IsEmailAlreadyRegistered(string email)
        {
            // Implement logic to check if the email already exists in the database
            // You can query the database to check if there's a record with the given email
            // If it exists, return true; otherwise, return false
            // Here's a simplified example (you should adapt this to your database structure):

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM users_table WHERE email = @email", con);
            cmd.Parameters.AddWithValue("@email", email);

            int count = (int)cmd.ExecuteScalar();
            con.Close();

            return count > 0; // If count is greater than 0, the email already exists
        }
    }


}