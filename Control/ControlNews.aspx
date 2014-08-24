﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlNews.aspx.cs" Inherits="Control_Default3" %>

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
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                            </Columns>
                        </asp:GridView>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [news] WHERE [id] = @id" InsertCommand="INSERT INTO [news] ([title], [time], [author], [type], [content]) VALUES (@title, @time, @author, @type, @content)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [news] ORDER BY [id] DESC" UpdateCommand="UPDATE [news] SET [title] = @title, [time] = @time, [author] = @author, [type] = @type, [content] = @content WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="time" Type="DateTime" />
                                <asp:Parameter Name="author" Type="String" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="time" Type="DateTime" />
                                <asp:Parameter Name="author" Type="String" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        
                </div>
           
        </div>

        


   
    </form>
</body>
</html>