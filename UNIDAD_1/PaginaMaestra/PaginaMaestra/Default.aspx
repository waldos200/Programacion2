<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PaginaMaestra.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTitulo" runat="server" Text="Bienvenids al curso de programacion II" Font-Bold="true" Font-Size="X-Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text="Este es un ejemplo de paginas maestras."></asp:Label>
</asp:Content>
