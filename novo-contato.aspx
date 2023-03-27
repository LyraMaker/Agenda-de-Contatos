<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="novo-contato.aspx.vb" Inherits="Agenda_de_Contatos.novo_contato" %>

<% Response.WriteFile("header.aspx") %>
    
<form id="form1" class="container block" runat="server">
    <h1 class="title">Eu sou o novo contato</h1>
    <div class="field">
        <asp:Label ID="Label1" runat="server" CssClass="label" Text="Nome do Contato"></asp:Label>
        <div class="control">
            <asp:TextBox ID="txtNome" runat="server" CssClass="input"></asp:TextBox>
        </div>
    </div>
    <div class="field">
        <asp:Label ID="Label2" runat="server" CssClass="label" Text="Telefone"></asp:Label>
        <div class="control">
            <asp:TextBox ID="txtNome0" runat="server" CssClass="input"></asp:TextBox>
        </div>
    </div>
    <asp:SqlDataSource runat="server"></asp:SqlDataSource>
    <asp:Button ID="btnCadastrar" runat="server" CssClass="button is-primary" Text="Cadastrar contato" />
</form>

</body>
</html>
