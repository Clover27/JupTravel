using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class  scene : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString[0].ToString();
        Session["fromid"] = int.Parse(id);
        string s = Server.MapPath("./");

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();    
        string name = "select name from information where id=" + id;
        SqlCommand cmd1 = new SqlCommand(name, con);
        Label1.Text = cmd1.ExecuteScalar().ToString();
        string position = "select position from information where id=" + id;
        SqlCommand cmd2 = new SqlCommand(position, con);
        Label2.Text = cmd2.ExecuteScalar().ToString();
        string area = "select area from information where id=" + id;
        SqlCommand cmd3 = new SqlCommand(area, con);
        Label3.Text = cmd3.ExecuteScalar().ToString();
        string famous = "select famous  from information where id=" + id;
        SqlCommand cmd4 = new SqlCommand(famous, con);
        Label4.Text = cmd4.ExecuteScalar().ToString();
    }
}