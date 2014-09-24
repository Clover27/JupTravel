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
        if (Session["login"] != "yes") { TextBox1.Visible = false; Button1.Visible = false; }
        if (Session["login"] == "yes") { Hyperlink1.Visible = false; }

        string id = Request.QueryString[0].ToString();
        Session["fromid"] = int.Parse(id);
        string s = Server.MapPath("./");

        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();    
        string name = "select name from information where id=" + id;
        SqlCommand cmd1 = new SqlCommand(name, con);
        Label1.Text = cmd1.ExecuteScalar().ToString();
        Session["scenename"] = Label1.Text;

        string intro = "select intro from information where id=" + id;
        SqlCommand cmd3 = new SqlCommand(intro, con);
        Label3.Text = cmd3.ExecuteScalar().ToString();

        string area = "select area from information where id=" + id;
        SqlCommand cmd4 = new SqlCommand(area, con);
        Label4.Text = cmd4.ExecuteScalar().ToString();

        string people = "select people from information where id=" + id;
        SqlCommand cmd5 = new SqlCommand(people, con);
        Label5.Text = cmd5.ExecuteScalar().ToString();

        string position = "select position from information where id=" + id;
        SqlCommand cmd6 = new SqlCommand(position, con);
        Label6.Text = cmd6.ExecuteScalar().ToString();

        string route = "select route from information where id=" + id;
        SqlCommand cmd7 = new SqlCommand(route, con);
        Label7.Text = cmd7.ExecuteScalar().ToString();

        string famous = "select famous  from information where id=" + id;
        SqlCommand cmd8 = new SqlCommand(famous, con);
        Label8.Text = cmd8.ExecuteScalar().ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = Server.MapPath("./");
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string strsql = "insert into comment(name,time,content,fromid) values ('" + Session["name"] + "','" + System.DateTime.Now.ToString() + "','" + TextBox1.Text + "','" + Session["fromid"] + "')";
        SqlCommand cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.ToString());
    }
}