using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ControlInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttonup_Click(object sender, EventArgs e)
    {
        Boolean fileOk = false;
        //指定文件路径，pic是项目下的一个文件夹；～表示当前网页所在的文件夹
        String path = Server.MapPath("~/picture/");
        //文件上传控件中如果已经包含文件
        if (fuImage.HasFile)
        {
            //得到文件的后缀
            String fileExtension = System.IO.Path.GetExtension(fuImage.FileName).ToLower();
            //允许文件的后缀
            String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg", ".bmp" };
            //看包含的文件是否是被允许的文件的后缀
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOk = true;
                }
            }
        }
        if (fileOk)
        {
            try
            {　//文件另存在服务器的指定目录下
                fuImage.PostedFile.SaveAs(path + fuImage.FileName);
                string s = Server.MapPath("../");
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
                con.Open();
                string r1 = "~/picture/" + fuImage.FileName;
                string strsql = "insert into pic(name,url) values ('" + TextBox1.Text + "','" + r1 + "')";
                SqlCommand cmd = new SqlCommand(strsql, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('文件上传成功！');</script>");

            }
            catch
            {
                Response.Write("<script>alert('文件上传失败！');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('只能上传gif,png,jpeg,jpg,bmp图象文件！');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string strsql = "insert into information(name,diyu,leixing,area,people,position,route,famous,intro) values ('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + int.Parse(TextBox2.Text) + "','" + int.Parse(TextBox4.Text) + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('景区发布成功！');</script>");
    }
}