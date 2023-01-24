<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="First Name">
		</dxe:ASPxLabel>
		<dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="firstName" 
			Width="170px">
		</dxe:ASPxTextBox>
		<br />
		<dxe:ASPxLabel ID="ASPxLabel2" runat="server" Text="Last Name">
		</dxe:ASPxLabel>
		<dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientInstanceName="lastName" 
			Width="170px">
		</dxe:ASPxTextBox>
		<br />
		<dxe:ASPxButton ID="ASPxButton2" runat="server" 
			Text="Add " AutoPostBack="False">
			<ClientSideEvents Click="function(s, e) {
				var fName=firstName.GetValue();
				var lName=lastName.GetValue();
				firstName.SetText('');
				lastName.SetText(''); 
				var FullName = new Array(fName,lName);    
				comboBox.AddItem(FullName);
			}" />
		</dxe:ASPxButton>
		<br />
		<dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" 
			ClientInstanceName="comboBox" ValueType="System.String" Width="350px" 
			TextFormatString="{0} {1}">
			<Columns>
				<dxe:ListBoxColumn Caption="First Name" Name="First Name" 
					ToolTip="First Name" />
				<dxe:ListBoxColumn Caption="Last Name" Name="Last Name" ToolTip="Last Name" />
			</Columns>
		</dxe:ASPxComboBox>
		<br />
		<dxe:ASPxButton ID="ASPxButton1" runat="server" Text="Clear Items" 
			AutoPostBack="False">
			<ClientSideEvents Click="function(s, e) {
				comboBox.ClearItems();
			}" />
		</dxe:ASPxButton>

	</div>
	</form>
</body>
</html>
