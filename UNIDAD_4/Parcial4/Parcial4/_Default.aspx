<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Default.aspx.cs" Inherits="Parcial4._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack = "true">
                <asp:ListItem>a. Clientes que vivan en un país cuya primera letra es S, ordenados por país. </asp:ListItem>
                <asp:ListItem>b. Órdenes del mes de diciembre de 2013 cuya venta sea mayor a 1999. </asp:ListItem>
                <asp:ListItem>c. Listado de clientes ordenados por país y ciudad. </asp:ListItem>
                <asp:ListItem>d. Nombre del producto y cantidad vendida </asp:ListItem>
                <asp:ListItem>e. Nombre del producto y nombre del proveedor de cada producto</asp:ListItem>
                <asp:ListItem>f. Nombre del proveedor y cantidad de productos. </asp:ListItem>
                <asp:ListItem>g. Clientes de Alemania y España, ordenados por país y ciudad.</asp:ListItem>
                <asp:ListItem>h. Cantidad de clientes por ciudad.</asp:ListItem>
                <asp:ListItem>i. Cantidad de proveedores para las ciudades cuya primera letra es S.</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
