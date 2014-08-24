<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlUser.aspx.cs" Inherits="Default2"  %>

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

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                        <asp:BoundField DataField="information" HeaderText="information" SortExpression="information" />
                        <asp:BoundField DataField="others" HeaderText="others" SortExpression="others" />
                        <asp:BoundField DataField="control" HeaderText="control" SortExpression="control" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [people] WHERE [id] = @id" InsertCommand="INSERT INTO [people] ([username], [password], [sex], [pic], [information], [others], [control]) VALUES (@username, @password, @sex, @pic, @information, @others, @control)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [people] ORDER BY [id] DESC" UpdateCommand="UPDATE [people] SET [username] = @username, [password] = @password, [sex] = @sex, [pic] = @pic, [information] = @information, [others] = @others, [control] = @control WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="sex" Type="Int32" />
                        <asp:Parameter Name="pic" Type="String" />
                        <asp:Parameter Name="information" Type="String" />
                        <asp:Parameter Name="others" Type="String" />
                        <asp:Parameter Name="control" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="sex" Type="Int32" />
                        <asp:Parameter Name="pic" Type="String" />
                        <asp:Parameter Name="information" Type="String" />
                        <asp:Parameter Name="others" Type="String" />
                        <asp:Parameter Name="control" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
           
        </div>

        


   
    </form>
</body>
</html>
