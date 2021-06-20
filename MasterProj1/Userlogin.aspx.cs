using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterProj1
{
  public partial class Userlogin : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;

    }

    

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      cmd.CommandText = "Select * from Registrationform where  Email='" + txtemail.Text + "' and Password='" + txtpassword.Text + "'";
      con.Open();
      //int index = cmd.ExecuteNonQuery();
      //if (index > 0)
      //{
      //  Response.Write("<script>alert('Login Successfully ..')</script>");
      //}
      //else
      //{
      //  Response.Write("<script>alert('Failed ..  Please try Again')</script>");
      //}
      SqlDataReader dr = cmd.ExecuteReader();
      if (dr.Read())
      {
        Response.Write("<script>alert('Login Successfully ..')</script>");
      }
      else
      {
        Response.Write("<script>alert('Failed ..  Please try Again')</script>");
      }

      con.Close();
      //Response.Redirect("Form1.aspx");
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
      Response.Redirect("Registration1.aspx");
    }
  }
}
