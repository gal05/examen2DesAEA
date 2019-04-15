<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListaArticulos.aspx.cs" Inherits="Evaluacion.ListaArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>LISTA DE ARTICULOS</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
