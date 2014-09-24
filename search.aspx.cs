using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class search : System.Web.UI.Page
{
    static bool ff = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ff)
        {
            this.DropDownList1.Items.Add(new ListItem("", ""));
            DropDownList2.Items.Insert(0, new ListItem("", ""));
            ff = false;
        }

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int mainf=0;
        int t1 = 0, t2 = 0, t3 = 0, t4 = 0, t5 = 0, t6 = 0;
        string a1 = TextBox1.Text; string a21 = DropDownList1.Text; string a22 = DropDownList2.Text; string a3 = TextBox2.Text; string a6 = TextBox7.Text;
        int a41 = 0, a42 = 0;string m43 = TextBox3.Text, m44 = TextBox4.Text;int a51=0, a52=0; string m53 = TextBox5.Text, m54 = TextBox6.Text;
        int a43,a44,a53,a54;
        string k1 = "", k21 = "", k22 = "", k3 = "", k4 = "", k5 = "", k6 = "", kk1 = "", kk2 = "", mm1 = "", mm2 = "", mm3 = "", mm4 = "";

        if (CheckBox1.Checked == true) t1 = 1; if (CheckBox2.Checked == true) t2 = 1; if (CheckBox3.Checked == true) t3 = 1;
        if (CheckBox4.Checked == true) t4 = 1; if (CheckBox5.Checked == true) t5 = 1; if (CheckBox6.Checked == true) t6 = 1;

        if (m43 == "") a43 = 0; else { a43 = int.Parse(m43); } if (m44 == "") a44 = 0; else { a44 = int.Parse(m44); }
        if (m53 == "") a53 = 0; else { a53 = int.Parse(m53); } if (m54 == "") a54 = 0; else { a54 = int.Parse(m54); }
        if (RadioButton1.Checked == true) a41 = 1; if (RadioButton2.Checked == true) a42 = 1;
        if (RadioButton3.Checked == true) a51 = 1; if (RadioButton4.Checked == true) a52 = 1;


        if (a1 != "")
        {
            if (mainf != 0) 
            {
                if(t1==0)
                {
                    k1 = " and "+" t_s.name= " + "'" + a1 + "'";
                }
                if(t1==1)
                {
                    k1 = " or " + " t_s.name= " + "'" + a1 + "'";
                }
            } 
            else 
            {
                k1 = " t_s.name= " + "'" + a1 + "'";
             }
                mainf++;
        }
        if (a21 != ""||a22!="")
        {
            if (mainf != 0)
            {
                if (t2 == 0)
                {
                    if(a21=="")
                    {k21 = " and " + " leixing= " + "'" + a22 + "'";}
                    if(a22=="")
                    {k21 = " and " + " diyu= " + "'" + a21 + "'"; }
                    if(a21!=""&&a22!="")
                    { k21 = " and " + " diyu= " + "'" + a21 + "'" + " and " + " leixing= " + "'" + a22 + "'";  }
                }
                if (t2 == 1)
                {
                    if (a21 == "")
                    { k21 = " or " + " leixing= " + "'" + a22 + "'"; }
                    if (a22 == "")
                    { k21 = " or " + " diyu= " + "'" + a21 + "'"; }
                    if (a21 != "" && a22 != "")
                    { k21 = " or " + " diyu= " + "'" + a21 + "'" + " and " + " leixing= " + "'" + a22 + "'"; }
                }
            }
            else
            {

                    if (a21 == "")
                    { k21 = " leixing= " + "'" + a22 + "'"; }
                    if (a22 == "")
                    { k21 =  " diyu= " + "'" + a21 + "'"; }
                    if (a21 != "" && a22 != "")
                    { k21 = " diyu= " + "'" + a21 + "'" + " and " + " leixing= " + "'" + a22 + "'"; }
            }
            mainf++;
        }
        if(a3!="")
        {
            if (mainf != 0)
            {
                if (t3 == 0)
                {
                    k3 = " and " + " t_s.position like " + "'%" + a3 + "%'";
                }
                if (t3 == 1)
                {
                    k3 = " or " + " t_s.position like " + "'%" + a3 + "%'";
                }
            }
            else
            {
                k3 = " t_s.position like " + "'%" + a3 + "%'";
            }
            mainf++;
        }
        if(a43!=0||a44!=0)
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Travel;Integrated Security=True");
            con.Open();
            string number = "select count(id) from information";
            SqlCommand cmd1 = new SqlCommand(number, con);
            int idnumber = int.Parse(cmd1.ExecuteScalar().ToString());
            int ss1 = idnumber * a43 / 100; int ss2 = idnumber * a44 / 100;
            mm1=ss1.ToString();mm2=ss2.ToString();
            if(mainf != 0)
            {
                if (t4 == 0)
                {
                    if (a43 == 0)
                    {
                        if (a41 == 1) { k4 = " and " + " row_number<= " + mm2; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " and " + " row_number<= " + mm2; }
                    }
                    if (a44 == 0)
                    {
                        if (a41 == 1) { k4 = " and " + " row_number>= " + mm1; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " and " + " row_number>= " + mm1; }
                    }
                    if (a43 != 0 && a44 != 0)
                    {
                        if (a41 == 1) { k4 = " and " + " row_number>= " + mm1 + " and row_number<= " + mm2; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " and " + " row_number>= " + mm1 + " and row_number<= " + mm2; }
                    }
                }
                if (t4 == 1)
                {
                    if (a43 == 0)
                    {
                        if (a41 == 1) { k4 = " or " + " row_number<= " + mm2; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " or " + " row_number<= " + mm2; }
                    }
                    if (a44 == 0)
                    {
                        if (a41 == 1) { k4 = " or " + " row_number>= " + mm1; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " or " + " row_number>= " + mm1; }
                    }
                    if (a43 != 0 && a44 != 0)
                    {
                        if (a41 == 1) { k4 = " or " + " row_number>= " + mm1 + " and row_number<= " + mm2; }
                        if (a42 == 1) { kk1 = "DESC"; k4 = " or " + " row_number>= " + mm1 + " and row_number<= " + mm2; }
                    }
                }
            }
            else
            {
                if (a43 == 0)
                {
                    if (a41 == 1) { k4 = " row_number<= " + mm2 ; }
                    if (a42 == 1) { kk1 = "DESC"; k4 = " row_number<= " + mm2; }
                 }
                if (a44 == 0)
                {
                    if (a41 == 1) { k4 = " row_number>= " + mm1; }
                    if (a42 == 1) { kk1 = "DESC"; k4 = " row_number>= " + mm1; }
                }
                if (a43 != 0 && a44 != 0)
                {
                    if (a41 == 1) { k4 = " row_number>= " + mm1 + " and row_number<= " + mm2; }
                    if (a42 == 1) { kk1 = "DESC"; k4 = " row_number>= " + mm1 + " and row_number<= " + mm2; }
                }
            }
            mainf++;
        }
        if (a53 != 0 || a54 != 0)
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Travel;Integrated Security=True");
            con.Open();
            string number = "select count(id) from information";
            SqlCommand cmd1 = new SqlCommand(number, con);
            int idnumber = int.Parse(cmd1.ExecuteScalar().ToString());
            int ss1 = idnumber * a43 / 100; int ss2 = idnumber * a44 / 100;
            mm3 = ss1.ToString(); mm4 = ss2.ToString();
            if (mainf != 0)
            {
                if (t5 == 0)
                {
                    if (a53 == 0)
                    {
                        if (a51 == 1) { k5 = " and " + " row_numberr<= " + mm4; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " and " + " row_numberr<= " + mm4; }
                    }
                    if (a54 == 0)
                    {
                        if (a51 == 1) { k5 = " and " + " row_numberr>= " + mm3; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " and " + " row_numberr>= " + mm3; }
                    }
                    if (a53 != 0 && a54 != 0)
                    {
                        if (a51 == 1) { k5 = " and " + " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " and " + " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                    }
                }
                if (t5 == 1)
                {
                    if (a53 == 0)
                    {
                        if (a51 == 1) { k5 = " or " + " row_numberr<= " + mm4; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " or " + " row_numberr<= " + mm4; }
                    }
                    if (a54 == 0)
                    { 
                        if (a51 == 1) { k5 = " or " + " row_numberr>= " + mm3; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " or " + " row_numberr>= " + mm3; }
                    }
                    if (a53 != 0 && a54 != 0)
                    {
                        if (a51 == 1) { k5 = " or " + " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                        if (a52 == 1) { kk2 = "DESC"; k5 = " or " + " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                    }
                }
            }
            else
            {
                if (a53 == 0)
                {
                    if (a51 == 1) { k5 = " row_numberr<= " + mm4; }
                    if (a52 == 1) { kk2 = "DESC"; k5 =  " row_numberr<= " + mm4; }
                }
                if (a54 == 0)
                {
                    if (a51 == 1) { k5 =" row_numberr>= " + mm3; }
                    if (a52 == 1) { kk2 = "DESC"; k5 = " row_numberr>= " + mm3; }
                }
                if (a53 != 0 && a54 != 0)
                {
                    if (a51 == 1) { k5 = " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                    if (a52 == 1) { kk2 = "DESC"; k5 = " row_numberr>= " + mm3 + " and row_numberr<= " + mm4; }
                }
            }
            mainf++;
        }
        if (a6 != "")
        {
            if (mainf != 0)
            {
                if (t6 == 0)
                {
                    k6 = " and t_s.id=bus.id " + " and bus.number= " + a6;
                }
                if (t1 == 1)
                {
                    k6 = " and t_s.id=bus.id " + " or bus.number= " + a6;
                }
            }
            else
            {
                k6 = " t_s.id=bus.id "+ " and bus.number= "+a6;
             }
            mainf++;
        }



        string strsql="";
        if (a1 == "" && a21 == "" && a22 == "" && a3 == "" && a43 == 0 && a44 == 0 && a51 == 0 && a52 == 0 && a6 == "")
        { strsql = "select * from information" ; }
       /* else
        {
            strsql = "with t_s as ( select row_number() over ( order by area "+kk1+") as row_number,row_number() over (order by people "+kk2+") as row_numberr,* from information )  select * from t_s where " + k1 + " " + k21 + " " + k3 + ""+k4+" "+k5+" order by id";
            Label1.Text = mm1;
        }*/
        else 
        {
            strsql = "with t_s as ( select row_number() over ( order by area " + kk1 + ") as row_number,row_number() over (order by people " + kk2 + ") as row_numberr,* from information )  select distinct t_s.* from t_s,bus where " + k1 + " " + k21 + " " + k3 + "" + k4 + " " + k5 + " "+k6+" order by t_s.id";  
        }

        SqlConnection con1 = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con1.Open();
        SqlDataAdapter da = new SqlDataAdapter(strsql, con1);
        DataSet ds = new DataSet();
        da.Fill(ds, "table");
        DataList1.DataSource = ds;
        DataList1.DataKeyField = "id";
        DataList1.DataBind();
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("areatuxing.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("peopletuxing.aspx");
    }
}