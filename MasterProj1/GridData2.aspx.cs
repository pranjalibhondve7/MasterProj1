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
  public partial class GridData2 : System.Web.UI.Page
  {
    string id;
    SqlConnection con;
    SqlCommand cmd;
    string cnfg = ConfigurationManager.ConnectionStrings["CN"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      con = new SqlConnection(cnfg);
      cmd = new SqlCommand();
      cmd.Connection = con;
      id = Request.QueryString["id"];
      LoadData();
    }

    protected void LoadData()
    {
      cmd.CommandText = "Select * from GridEmployee where Eid=" + Convert.ToInt32(id) + "";
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
  }
}
