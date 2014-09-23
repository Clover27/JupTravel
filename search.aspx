<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

            
      

    <p>
        请输入搜索内容：</p>
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        景点名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="CheckBox2" runat="server" />
        景点类型：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="last" DataValueField="last" AppendDataBoundItems="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [last] FROM [Classify] WHERE ([first] = @first)">
            <SelectParameters>
                <asp:Parameter DefaultValue="地域分类" Name="first" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="last" DataValueField="last" AppendDataBoundItems="True"> 
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Travel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [last] FROM [Classify] WHERE ([first] = @first)">
            <SelectParameters>
                <asp:Parameter DefaultValue="类型分类" Name="first" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:CheckBox ID="CheckBox3" runat="server" />
        景点地点：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="CheckBox4" runat="server" />
        景点面积：<asp:RadioButton GroupName="1" ID="RadioButton1" runat="server" text="正排"/>
        <asp:RadioButton GroupName="1" ID="RadioButton2" runat="server" text="倒排"/>  &nbsp
        <asp:TextBox ID="TextBox3" runat="server" Width="44px"></asp:TextBox>
        %&nbsp--&nbsp
        <asp:TextBox ID="TextBox4" runat="server" Width="49px"></asp:TextBox>%
    </p>
    <p>
        <asp:CheckBox ID="CheckBox5" runat="server" />
        景点客流量：<asp:RadioButton GroupName="2" ID="RadioButton3" runat="server" text="正排"/>
        <asp:RadioButton GroupName="2" ID="RadioButton4" runat="server" text="倒排"/>  &nbsp
        <asp:TextBox ID="TextBox5" runat="server" Width="44px"></asp:TextBox>
        %&nbsp--&nbsp
        <asp:TextBox ID="TextBox6" runat="server" Width="49px"></asp:TextBox>%

    </p>
    <p>
        <asp:CheckBox ID="CheckBox6" runat="server" />
        结果景点公交路线：<asp:TextBox ID="TextBox7" runat="server" Width="68px"></asp:TextBox>
        路公交</p>
    <p>
        勾选方框代表或者，不选则为并且关系,不输入默认为无该条件
    </p>
    <p>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查看面积大小比例统计图" /></p>
    <p>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查看客流量统计图" /></p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click1" />
        <asp:DataList ID="DataList1" runat="server"  >
            <ItemTemplate>

                <asp:HyperLink ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Blue" NavigateUrl='<%#"scene.aspx?id="+Eval("id") %>'/>
                <br />

<br />
            </ItemTemplate>
        </asp:DataList>
        
    </p>

            
      

    </asp:Content>
