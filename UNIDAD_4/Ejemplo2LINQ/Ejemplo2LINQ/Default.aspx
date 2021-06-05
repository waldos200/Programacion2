<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ejemplo2LINQ.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvDatos" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
            <asp:Label ID="lblDepto" runat="server"></asp:Label>
            <br />
            <br />
            <table id="tblLlenar" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblIdEmpleado" runat="server" Text="ID Empleado:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIdEmp" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGenero" runat="server" Text="Genero:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGenero" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblSalario" runat="server" Text="Salario:"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSalario" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblIdDept" runat="server" Text="ID Departamento:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="idDept" DataValueField="idDept">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Muestra2ConnectionString %>" SelectCommand="SELECT [idDept], [Departamento] FROM [Departamentos]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label1" runat="server" Text="1. Tecnologia"></asp:Label>
            <br />
            2. Recursos Humanos<br />
            3. Fiananzas<br />
            <br />
            <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" />
            <asp:Button ID="btnInsertar" runat="server" OnClick="btnInsertar_Click" Text="Insertar" />
            <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" />
            <asp:Button ID="btnBorrar" runat="server" OnClick="btnBorrar_Click" Text="Borrar" />
            <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar"/>
            <br />
            <br />
            <asp:Button ID="btnEmpsXDept" runat="server" OnClick="btnEmpsXDept_Click" Text="Empleado por Departamento" />
        </div>
    </form>
</body>
</html>
