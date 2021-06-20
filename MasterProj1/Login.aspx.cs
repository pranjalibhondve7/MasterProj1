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
  public partial class Login : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    String cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      Session["name"] = txtuser.Text;    //Create Session
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

      //Response.Redirect("UserLogin.aspx");
      ////Label1.Text = "Select First Username";
      //DropDownList1.Focus();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
      //if(DropDownList1.SelectedItem.Text== "User Login")
      //{
      //  Blocked_User();
      //}
      if(DropDownList1.SelectedItem.Text == "User Login")
      {
        cmd.CommandText = "Select * from UserRegistration1 where  Username='" + txtuser.Text.Trim() + "' and Password='" + txtpass.Text.Trim() + "'";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
          Session["name"] = txtuser.Text;
          Response.Redirect("Form1.aspx");
        }
        else
        {
          Response.Write("<script>alert('You are block Please contact admin.....')</script > ");
        }
      }
      if (DropDownList1.SelectedValue == "Admin Login")
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
      //if (DropDownList1.SelectedValue == "User Login")
      //{
      //  cmd.CommandText = "Select * from UserRegistration1 where  Username='" + txtuser.Text.Trim() + "' and Password='" + txtpass.Text.Trim() + "'";
      //  con.Open();
      //  SqlDataReader dr = cmd.ExecuteReader();
      //  if (dr.Read())
      //  {
      //    Response.Write("<script>alert('Login Successfully ..')</script>");
      //    Response.Redirect("Form1.aspx");
      //  }
      //  else
      //  {
      //    Response.Write("<script>alert('Failed ..  Please try Again')</script>");
      //  }

      //  con.Close();
      //}
    }

    //private void Blocked_User()
    //{
    //  throw new NotImplementedException();
    //}
  }
   
}


    
