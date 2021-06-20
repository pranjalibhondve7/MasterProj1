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
  public partial class GridDataBind : System.Web.UI.Page
  {
    SqlConnection con;
    SqlCommand cmd;
    string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      if (!IsPostBack)
      {

        LoadData();
      }
      if (ViewState["name"] != null && ViewState["dept"] != null && ViewState["loc"] != null)//use of viewstate
      {
        lblname.Text = ViewState["name"].ToString();
        lbldep.Text = ViewState["dept"].ToString();
        lblloc.Text = ViewState["loc"].ToString();
      }

    }

    protected void LoadData()
    {
      cmd.CommandText = "Select * from GridEmployee";
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

    protected void btnSelect_Command(object sender, CommandEventArgs e)
    {
      int id = Convert.ToInt32(e.CommandArgument);
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      cmd.CommandText = "select * from GridEmployee where Eid=" + id + "";
      SqlDataAdapter da = new SqlDataAdapter(cmd);
      DataTable dt = new DataTable();
      da.Fill(dt);

      if (dt.Rows.Count > 0)
      {
        txtId.Text = dt.Rows[0]["Eid"].ToString();
        txtname.Text = dt.Rows[0]["Name"].ToString();
        //Use of State View
        ViewState["name"] = txtname.Text;

        txtdept.Text = dt.Rows[0]["Department"].ToString();
        ViewState["dept"] = txtdept.Text;

        txtloc.Text = dt.Rows[0]["Location"].ToString();
        ViewState["loc"] = txtloc.Text;

        txtdate.Text = Convert.ToDateTime(dt.Rows[0]["JoiningDate"].ToString()).ToString("yyyy-MM-dd");

        Response.Redirect("GridData2.aspx?id=" + id);   // use of quary string
      }
      else
      {
        GridView1.DataSource = dt;
        GridView1.DataBind();
      }
    }
  }
}

