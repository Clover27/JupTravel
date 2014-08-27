using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((string)Session["login"] == "yes")
        {
            Session["Default"] = "enlogin";
            Response.Redirect("jmp.aspx");
        }
    }
    protected void LogReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void LogSub_Click(object sender, EventArgs e)
    {
        if (UserName.Text == "") Warn1.Text = "请正确输入用户名";
        if (PassWord.Text == "") Warn2.Text = "请正确输入密码";
        if (UserName.Text != "" && PassWord.Text != "")
        {
            string s = Server.MapPath("./");
            string z = System.Web.HttpContext.Current.Request.Path;
            //UserName.Text = s;
            //Console.WriteLine(z+"  "+s);
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + s + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
            con.Open();
            string strsql = "select * from people where username='" + UserName.Text + "' and password='" + PassWord.Text + "'"; 
            SqlDataAdapter da = new SqlDataAdapter(strsql, con); 
             DataSet ds=new DataSet(); 
            int count=da.Fill(ds, "table"); 
            if (count >0) 
            { 
                Session["name"] = UserName.Text; 
                Session["password"] =PassWord.Text; 
                Session["login"] ="yes";
                Response.Redirect("UserInfo.aspx");
            }
            else { Warn1.Text ="账号或密码错误"; }
        }
    }
}