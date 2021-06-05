<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ControlesWeb2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Captura de datos"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblNombre" runat="server" AssociatedControlID="txtNombre" Text="Ingrese su nombre completo:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="nombreValidator" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="El campo no puede estar vacio" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblTelefono" runat="server" AssociatedControlID="txtTelefono" Text="Ingrese su teléfono:"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="telefonoValidator" runat="server" ControlToValidate="txtTelefono" Display="Dynamic" ErrorMessage="Escriba un teléfono válido" ForeColor="Red" ValidationExpression="\(?(\d{3})?\)?[\s-]?\d{4}[\s-]?\d{4}"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Ingrese su correo electrónico:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Escriba un email válido" ForeColor="Red" ValidationExpression="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}(\.[A-Za-z]{2,4})?"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="lblEdad" runat="server" AssociatedControlID="txtEdad" Text="Ingrese su edad:"></asp:Label>
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="edadValidator" runat="server" ControlToValidate="txtEdad" Display="Dynamic" ErrorMessage="Edad debe ser entre 18 y 65" ForeColor="Red" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        </p>
        <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
        <p>
            <asp:Label ID="lblInformacion" runat="server"></asp:Label>
        </p>
        <asp:ValidationSummary ID="resumenValidator" runat="server" BorderStyle="Solid" />
    </form>
</body>
</html>
