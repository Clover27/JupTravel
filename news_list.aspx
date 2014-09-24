<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news_list.aspx.cs" Inherits="news_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <p style="font-size:x-large; font-weight:bold;">新闻资讯</p>
    <%--请实现从数据库中调用新闻信息--%>
    <div style="align-content:center; width: 620px;">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" Width="619px" ItemStyle-HorizontalAlign="Left"  style="align-content:center">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            &nbsp; &nbsp;&nbsp; &nbsp;  标题：
            <asp:HyperLink ID="titleLabel" runat="server" Text='<%# Eval("title") %>'  NavigateUrl='<%#"news.aspx?id="+Eval("id") %>' ForeColor="Blue" style="text-align:center; "  />
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <div style="text-align:right; line-height:2px;">发布者：<asp:Label ID="titleLabel2"  runat="server" Text='<%# Eval("author") %>' /> &nbsp; &nbsp; &nbsp; &nbsp; </div>
            <br />
           
          
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [news] ORDER BY [id] DESC"></asp:SqlDataSource>
        </div>
</asp:Content>

