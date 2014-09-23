using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class tuxing : System.Web.UI.Page
{
    static double sb=0;
    protected void Page_Load(object sender, EventArgs e)
    {   
        
    }

    public string ss(int no)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string strsql = "with t_s as ( select row_number() over ( order by area desc) as row_number,* from information )  select name from t_s where row_number= " + no + "";
        SqlCommand cmd1 = new SqlCommand(strsql, con);
        return cmd1.ExecuteScalar().ToString();

    }

    public double mm(int n)
    {
        if(n<10)
        {SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + Server.MapPath("./") + "App_Data\\Travel.mdf;Integrated Security=True;Connect Timeout=5");
        con.Open();
        string strsql = "with t_s as ( select row_number() over ( order by area desc) as row_number,* from information )  select area from t_s where row_number= " + n +"";
        SqlCommand cmd1 = new SqlCommand(strsql, con);
        string strsql2 = "select sum(area) from information ";
        SqlCommand cmd2 = new SqlCommand(strsql2, con);
        double a= double.Parse(cmd1.ExecuteScalar().ToString());
        double all = double.Parse(cmd2.ExecuteScalar().ToString());
        double s= a / all;sb+=s;
        return s;}
        if(n==10)
        { 
            double kk=1-sb;
            sb = 0; return kk;
        }
        return 0;
    }
}