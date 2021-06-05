<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ejemplo3LINQ.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Text="Todos los empleados" Value="Todos"></asp:ListItem>
                <asp:ListItem Text="Empleados permanentes" Value="Permanente"></asp:ListItem>
                <asp:ListItem Text="Empleado por contrato" Value="Contrato"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="btnAgregarEmps" runat="server" OnClick="btnAgregarEmps_Click" Text="Agregar empleados" />
            <br />
        </div>
    </form>
</body>
</html>
