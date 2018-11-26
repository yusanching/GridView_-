<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    	<br />
		使用DataSource搭配AllowPaging跟PageIndexChanging作到分頁效果<br />
		<br />
    
    	<asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging">
		</asp:GridView>
    
    </div>
    	<p>
			&nbsp;</p>
		<p>
			使用LocalDB搭配DataSourceID跟AllowPaging作到分頁效果</p>
		<asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AllowPaging="True" PageSize="3">
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
				<asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
				<asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CreateDate], [Id], [Name] FROM [cart]"></asp:SqlDataSource>
    </form>
</body>
</html>
