using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["login"] == "yes")
        {
            UserNameLabel.Text = (string)Session["name"];
            string s = Server.MapPath("./");
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
            con.Open();
            string strsql = "select control from people where username='" + UserNameLabel.Text + "'";
            SqlCommand cmd = new SqlCommand(strsql, con);
            Session["control"] = cmd.ExecuteScalar().ToString();
            if ((string)Session["control"] == "1") UserLevel.Text = "管理员";
            else { UserLevel.Text = "普通用户"; UserManage.Visible = false; }
        }
        else {
            Session["Default"] = "unlogin";
            Response.Redirect("jmp.aspx");
            

        }



    }
    protected void ModiftPassWord_Click(object sender, EventArgs e)
    {

    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["Login"] = "no";
        Response.Redirect("Index.aspx");
    }
    protected void UserManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Control/Control.aspx");
    }
}