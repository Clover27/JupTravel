<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Control.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
   这里是管理页面
    </div>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [people] WHERE [id] = @id" InsertCommand="INSERT INTO [people] ([username], [password], [sex], [pic], [information], [others], [control]) VALUES (@username, @password, @sex, @pic, @information, @others, @control)" SelectCommand="SELECT * FROM [people] ORDER BY [id] DESC" UpdateCommand="UPDATE [people] SET [username] = @username, [password] = @password, [sex] = @sex, [pic] = @pic, [information] = @information, [others] = @others, [control] = @control WHERE [id] = @id" ProviderName="System.Data.SqlClient">
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
        
</asp:Content>
