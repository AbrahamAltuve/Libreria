<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerDatos.aspx.cs" Inherits="Libreria.VerDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
        </div>
    </form>
</body>
</html>
