<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <%-- 请应用传参，调数据库来显示对应新闻信息--%>
    
     <asp:Label ID="Label1" runat="server" Text='<%# Eval("title") %>'></asp:Label>
     <br /><br /><br />
     <asp:Label ID="Label2" runat="server" Text='<%# Eval("content") %>'></asp:Label>
    <br />
    <br /><br /><br /><br />
    评论
    <br /><br />
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Vertical" style="margin-right: 5px" Width="597px">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
            
         &nbsp&nbsp 发布人：
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
   
            &nbsp&nbsp&nbsp&nbsp 时间：
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            <br />
            <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' />
            <br />
            
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [comment] WHERE [id] = @id" InsertCommand="INSERT INTO [comment] ([name], [time], [content], [fromid]) VALUES (@name, @time, @content, @fromid)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [comment] WHERE ([fromid] = @fromid) ORDER BY [id] DESC" UpdateCommand="UPDATE [comment] SET [name] = @name, [time] = @time, [content] = @content, [fromid] = @fromid WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="fromid" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="fromid" SessionField="fromid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="fromid" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:Hyperlink ID="Label3" runat="server" Text="您未在线，评论请登陆"  NavigateUrl="~/Login.aspx" ForeColor="Blue"></asp:Hyperlink>
    <br /> <br />
    

    <asp:TextBox ID="TextBox1" runat="server" Height="104px" Width="499px"  TextMode="MultiLine" ></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="发表" OnClick="Button1_Click" />

</asp:Content>

