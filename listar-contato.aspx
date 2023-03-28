<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="listar-contato.aspx.vb" Inherits="Agenda_de_Contatos.listar_contato1" %>
<% Response.WriteFile("header.aspx") %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dsListarContatos" CssClass="container is-bordered mt-2 table is-striped is-hoverable is-fullwidth">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="dsListarContatos" ConnectionString="<%$ ConnectionStrings:agendaConexao %>" SelectCommand="SELECT * FROM [Contato] ORDER BY [Nome]"></asp:SqlDataSource>
    </form>
</body>
</html>
