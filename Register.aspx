﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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

        .div3 {
            width: auto;
            height: auto;
            float: right;
            
        }
        .nav {
            width: 200px;
            height: auto;
            margin: 0 auto;
            background: #def9fa;
            position: fixed;
          
            text-align: center;
        }
        .navR {
            width: 200px;
            height: auto;
            
            margin:20px 824px;
            background: #def9fa;
            float:right;
            position: fixed;
              
            text-align: center;
        }
        .body {
            width:624px;
            height:auto;
            margin:auto 200px;

        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <body>
<div style="margin:0px auto; text-align:center;">
    <form id="form1" runat="server">
    
     <div class="panel">
            <div >
                <img src="src/LOGO.jpg" />
                
            </div>
    <div class="nav">
            <a href="Index.aspx">回到主页</a>

             </div>
         <div class="body">
             <br/>
             <p style="font-size:25px;font-weight:bold">注&nbsp;册</p>
             
            用户名: 
             <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
             <asp:Label ID="Warn1" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
             密&nbsp&nbsp码:
             <asp:TextBox ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
             <asp:Label ID="Warn2" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
              确认密码:
             <asp:TextBox ID="PassWordSub" runat="server" TextMode="Password"></asp:TextBox>
             <asp:Label ID="Warn3" runat="server" Text="" ForeColor="Red"></asp:Label>
             <br/>
             <br/>
             <asp:Button ID="LogSub" runat ="server" Text="确 定" OnClick="LogSub_Click" /> &nbsp &nbsp &nbsp
             <asp:Button ID="RegLog" runat ="server" Text="登 陆" OnClick="RegLog_Click" />
             
            </div>
         

        </div>
    </form>
       </div>

        <p>
            <asp:Label ID="Warn4" runat="server" Text="" ForeColor="Red"></asp:Label>
        </p>

</body>
</html>
