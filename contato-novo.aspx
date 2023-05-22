<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contato-novo.aspx.vb" Inherits="Agenda_de_Contatos.contato_novo" %>
    <% Response.WriteFile("header.aspx") %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

<form id="form1" class="container block" runat="server">
    <h1 class="title">
        Eu sou o novo contato</h1>
    <div class="field">
        <asp:Label ID="Label1" runat="server" CssClass="label" Text="Nome do Contato"></asp:Label>
        <div class="control">
            <asp:TextBox ID="txtNome" runat="server" CssClass="input"></asp:TextBox>
        </div>
    </div>
    <div class="field">
        <asp:Label ID="Label2" runat="server" CssClass="label" Text="Telefone"></asp:Label>
        <div class="control">
            <asp:TextBox ID="txtTelefone" runat="server" CssClass="input"></asp:TextBox>
        </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="- O telefone deve ter essa aparência (xx) x xxxx-xxxx !" ControlToValidate="txtTelefone" ValidationExpression="^\(?[1-9]{2}\)? ?(?:[2-8]|9[1-9])[0-9]{3}\-?[0-9]{4}$"></asp:RegularExpressionValidator>
    </div>
    
    <asp:Button ID="btnCadastrar" runat="server" CssClass="button is-primary" Text="Cadastrar contato" OnClick="btnCadastrar_Click"  />
    <asp:SqlDataSource runat="server" ID="dsNovoContato" ConnectionString="<%$ ConnectionStrings:agendaConexao %>" SelectCommand="SELECT * FROM [Contato]" InsertCommand="INSERT INTO Contato(Nome, Telefone) VALUES (@Nome, @Telefone)">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" PropertyName="Text" Name="Nome"></asp:ControlParameter>
                <asp:ControlParameter ControlID="txtTelefone" PropertyName="Text" Name="Telefone"></asp:ControlParameter>
            </InsertParameters>
        </asp:SqlDataSource>
</form>

</body>
</html>
