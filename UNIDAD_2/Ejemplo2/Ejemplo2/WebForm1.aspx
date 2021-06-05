<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ejemplo2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblNombres" runat="server" Text="Nombres:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblApellidos" runat="server" Text="Apellidos:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGenero" runat="server" Text="Genero:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGenero" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSalario" runat="server" Text="Salario:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
