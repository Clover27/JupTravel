<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PutNews.aspx.cs" Inherits="Control_Default" %>

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
                    新闻标题:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    发布时间:</td>
                <td>
                    当前时间
                </td>
            </tr>
            <tr>
                <td>
                    作者:
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    分类</td>
                <td>
  
                    <asp:RadioButton GroupName="1" ID="RadioButton1" runat="server" text="公告"/>
                    <asp:RadioButton GroupName="1" ID="RadioButton2" runat="server" text="新闻"/>
                        
                </td>
            </tr>
            <tr>
                <td>
                    新闻内容</td>
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
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="width: 78px" Text="发布新闻" />
                    <br />
                </td>
            </tr>
        </table>
                        
                        
                </div>
           
        </div>

        


   
    </form>
</body>
</html>