<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ejemplo7.WebForm1" %>

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
                        <asp:Label ID="lblID" runat="server" Text="ID Estudiante:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                        <asp:Button ID="btnCargar" runat="server" OnClick="btnCargar_Click" Text="Cargar" />
                    </td>
                </tr>
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
                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTelefono" runat="server" Text="Telefono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" />
                    </td>
                    <td>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblInsert" runat="server" Text="INSERT:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCommandInsert" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblUpdate" runat="server" Text="UPDATE:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCommandUpdate" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblDelete" runat="server" Text="DELETE:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCommandDelete" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
