<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Agenda_de_Contatos.index" %>
    <% Response.WriteFile("header.aspx") %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agenda de contatos</title>

</head>
<body>
    <asp:Literal ID="mensagem" runat="server"></asp:Literal>
</body>
</html>
