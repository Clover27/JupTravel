<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlInfo.aspx.cs" Inherits="ControlInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <style type="text/css">
<!--

 body{text-align:center;}

-->
</style>
    <style>
        .panel {
            width: 1024px;
            height:auto;
            background:#def9fa;
            align-content:center;
            margin:0px auto; text-align:center;
        }

        .div1 {
            width: auto;
            height: auto;
            float: left;
        }

        .div2 {
            width:auto;
            height: auto;
            float: left;
        }

        
        .nav {
            width: 200px;
            height: auto;
            margin: 0 auto;
            background: #def9fa;
            position: fixed;
          
            text-align: center;
        }
        
        .body {
            width:624px;
            height:auto;
            margin:auto 250px;

        }
        .auto-style3 {
            height: 27px;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    
    <form id="form1" runat="server">
    <div class="panel">
      <div >
                <img src="../src/LOGO.jpg" />
                
            </div>
           <%-- 请修改以下登陆|注册信息以显示当前登陆状况--%>
            


            <div class="nav">
                
                <br/>
                <a href="ControlUser.aspx">管理用户</a><br /><br />
                <a href="PutNews.aspx">发布新闻</a><br /><br />
                <a href="ControlNews.aspx">管理新闻</a><br /><br />
                <a href="ControlView.aspx">景点分类</a><br /><br />
                <a href="ControlInfo.aspx">景点信息</a><br /><br />
                <a href="../Index.aspx">返回主页</a><br /><br />
               </div>

            <div class="body">
              
        <table class="style1">
            <tr>
                <td>
                    景区名称:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    地域分类:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="diyu" DataValueField="diyu">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [diyu] FROM [information]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    类型分类:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="leixing" DataValueField="leixing">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [leixing] FROM [information]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    面积:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    日均客流量:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    地点:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    乘车路线:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    主要景区列表:</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    相关图片:</td>
                <td>
                    <asp:FileUpload id="fuImage" runat="server"/>
                    <asp:Button ID="buttonup" runat="server" Text="上传" OnClick="buttonup_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    景区描述</td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" Height="206px" TextMode="MultiLine" 
                        Width="100%" style="margin-right: 194px"></asp:TextBox>
               
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" 
                        style="width: 78px" Text="景区发布" OnClick="Button1_Click" />
                    <br />
                </td>
            </tr>
        </table>     
                </div>
        </div>
    </form>
</body>
</html>