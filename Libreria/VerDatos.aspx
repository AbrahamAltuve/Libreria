<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerDatos.aspx.cs" Inherits="Libreria.VerDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gridViewLinQ" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="nombre" HeaderText="NOMBRE" />
                    <asp:BoundField DataField="edad" HeaderText="EDAD" />
                    <asp:BoundField DataField="documento" HeaderText="DOCUMENTO" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:GridView ID="gridViewAdo" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AdoNet">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="documento" HeaderText="documento" SortExpression="documento" />
                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="AdoNet" runat="server" ConnectionString="<%$ ConnectionStrings:ventasConnectionString %>" SelectCommand="SELECT * FROM [persona]"></asp:SqlDataSource>

           
        </div>
    </form>
</body>
</html>
