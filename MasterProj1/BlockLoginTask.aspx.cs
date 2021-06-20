using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterProj1
{
  public partial class BlockLoginTask : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      Session["Name"] = txtuser.Text;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      if (DropDownList1.SelectedValue == "Admin")
      {
        cmd.CommandText = "Select * from Admin where  Username='" + txtuser.Text + "' and Password='" + txtpass.Text + "'";
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
          Response.Write("<script>alert('Login Successfully ..')</script>");
          Response.Redirect("Form1.aspx");
        }
        else
        {
          Response.Write("<script>alert('Failed ..  Please try Again')</script>");
        }
        con.Close();
      }
      if (DropDownList1.SelectedValue == "User")
      {
        cmd.CommandText = "Select * from Registrationform where  Email='" + txtuser.Text + "' and Password='" + txtpass.Text + "'";
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
          Response.Write("<script>alert('Login Successfully ..')</script>");
          Response.Redirect("Form1.aspx");
        }
        else
        {
          Response.Write("<script>alert('Failed ..  Please try Again')</script>");
        }

        con.Close();
      }

    }
     
    }
  }
