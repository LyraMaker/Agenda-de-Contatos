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
        <div class="my-2 container">
            <div class="field has-addons">
                <div class="control">
                    <asp:TextBox ID="txtBuscar" runat="server" CssClass="input" placeholder="Pesquise algum contato"></asp:TextBox>
                </div>
                <div class="control">
                    <asp:LinkButton CssClass="button is-info" ID="lbtBuscar" runat="server" OnClick="lbtBuscar_Click">🔎</asp:LinkButton>
                </div>
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" DataSourceID="dsListarContatos" CssClass="container is-bordered mt-2 table is-striped is-hoverable" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Opera&#231;&#245;es">
                    <ControlStyle CssClass="button is-warning"></ControlStyle>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" CssClass="has-text-centered has-background-danger"></HeaderStyle>

                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ></ItemStyle>
                </asp:CommandField>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone"></asp:BoundField>
                </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="dsListarContatos" ConnectionString="<%$ ConnectionStrings:agendaConexao %>" SelectCommand="SELECT * FROM [Contato]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Contato] WHERE [Id] = @original_Id)" InsertCommand="INSERT INTO [Contato] ([Nome], [Telefone]) VALUES (@Nome, @Telefone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Contato] SET [Nome] = @Nome, [Telefone] = @Telefone WHERE [Id] = @original_Id AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Telefone] = @original_Telefone) OR ([Telefone] IS NULL AND @original_Telefone IS NULL))" OnDeleted="dsListarContatos_Deleted" OnUpdated="dsListarContatos_Updated">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Telefone" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="Telefone" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="Telefone" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Telefone" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
