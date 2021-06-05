<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Operaciones.aspx.cs" Inherits="Parcial2.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 94px;
        }
        .auto-style4 {
            width: 10%;
            text-align: center;
            vertical-align: top;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                        <asp:Button ID="btnCargar" runat="server" OnClick="btnCargar_Click" Text="Cargar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblExistencia" runat="server" Text="Existencia:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExistencia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCrear" runat="server" OnClick="btnCrear_Click" Text="Crear" />
                    </td>
                    <td>
                        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnCarga" runat="server" OnClick="btnCarga_Click" Text="Recargar" />
                    </td>
                    <td class="auto-style5">
                        </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvLibros" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
</asp:Content>
