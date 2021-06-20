using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterProj1
{
  public partial class Form1 : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      Label1.Text = Session["name"].ToString();
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      if (!IsPostBack)
      {
        visibletable();
        LoadData();
      } 
    }
    protected void visibletable()
    {
      string id= Session["name"].ToString();
      if (id== "Admin")
      {
        GridView1.Visible = true;
      }
      else
      {
        GridView1.Visible = false;
      }
    }
    
    protected void LoadData()
    {
      cmd.CommandText = "Select * from UserRegistration1 ";
      SqlDataAdapter da = new SqlDataAdapter(cmd);
      DataTable dt = new DataTable();
      da.Fill(dt);
      if (dt.Rows.Count > 0)
      {
        GridView1.DataSource = dt;
        GridView1.DataBind();
      }
      else
      {
        GridView1.DataSource = dt;
        GridView1.DataBind();
      }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
      Response.Redirect("Login.aspx");
    }
    protected void btnblock_Command(object sender, CommandEventArgs e)
    {
      int id = Convert.ToInt32(e.CommandArgument);

      cmd.CommandText = "Update UserRegistration1 set Isblock='Yes' where Id='" + id + "'";
      con.Open();
      int index = cmd.ExecuteNonQuery();
      if (index > 0)
      {
        Response.Write("<script>alert('Details Update Successfully.....') </script>");
      }
      else
      {
        Response.Write("<script>alert('Details Not  Update .....') </script>");
      }

      con.Close();
    }
    protected void btnselect_Command(object sender, CommandEventArgs e)
    {
      int id = Convert.ToInt32(e.CommandArgument);
      //con = new SqlConnection(cnfg);
      //cmd = new SqlCommand();
      //cmd.Connection = con;
      SqlDataAdapter da = new SqlDataAdapter(cmd);
      DataTable dt = new DataTable();
      cmd.CommandText = "select * from UserRegistration1 where Id=" + id + "";
      
      da.Fill(dt);

      if (dt.Rows.Count > 0)
      {
        txtid.Text = dt.Rows[0]["ID"].ToString();
        txtfname.Text = dt.Rows[0]["First_Name"].ToString();

        txtemail.Text = dt.Rows[0]["Email"].ToString();

        txtmob.Text = dt.Rows[0]["Mob_No"].ToString();

        txtfees.Text = dt.Rows[0]["Fees"].ToString();

        //txtblockreason.Text = dt.Rows[0]["Block_Reason "].ToString();

        /*Response.Redirect("GridData2.aspx?id=" + id);*/   // use of quary string
      }
      else
      {
        GridView1.DataSource = dt;
        GridView1.DataBind();
      }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
      //SqlDataAdapter da = new SqlDataAdapter(cmd);
      //DataTable dt = new DataTable();
      cmd.CommandText = "Update UserRegistration1 set First_Name='" + txtfname.Text + "',Email='" + txtemail.Text + "',Mob_No='" + txtmob.Text + "',Fees='" + txtfees.Text + "',Block_Reason='" + txtblockreason.Text + "' where Id='" + txtid.Text + "'";
      con.Open();
      int index = cmd.ExecuteNonQuery();
      if (index > 0)
      {
        Response.Write("<script>alert('Details Update Successfully.....')</script>");
      }
      else
      {
        Response.Write("<script>alert('Details Not  Update .....')</script>");
      }


      con.Close();

    }
    protected void btnaccept_Command(object sender, CommandEventArgs e)
    {
      
    }

    protected void btnreject_Command(object sender, CommandEventArgs e)
    {
      Response.Write("<script>alert('Your Documents reject. Please Upload........')</script>");
    }
  }
    
  }

    

