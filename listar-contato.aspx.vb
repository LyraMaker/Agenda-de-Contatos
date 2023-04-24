Public Class listar_contato1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub dsListarContatos_Deleted(sender As Object, e As SqlDataSourceStatusEventArgs)
        Dim msg As String
        If (dsListarContatos.Insert() > 0) Then
            msg = "<div class='container p-2'>
                        <div class='notification is-danger'>
                            <p> O contato foi <strong> exluido com sucesso</strong>!</p>
                        </div>
                   </div>"
        Else
            msg = "<div class='container p-2'>
                        <div class='notification is-danger'>
                            <p> O contato foi <strong> não foi atualizado! </strong></p>
                        </div>
                   </div>"
        End If
        System.Web.HttpContext.Current.Session("mensagem") = msg
        Response.Redirect("index.aspx")
    End Sub

    Protected Sub dsListarContatos_Updated(sender As Object, e As SqlDataSourceStatusEventArgs)
        Dim msg As String
        If (dsListarContatos.Insert() > 0) Then
            msg = "<div class='container p-2'>
                        <div class='notification is-info'>
                            <p> O contato foi <strong> atualizado com sucesso</strong>!</p>
                        </div>
                   </div>"
        Else
            msg = "<div class='container p-2'>
                        <div class='notification is-danger'>
                            <p> O contato foi <strong> não foi atualizado! </strong></p>
                        </div>
                   </div>"
        End If
        System.Web.HttpContext.Current.Session("mensagem") = msg
        Response.Redirect("index.aspx")
    End Sub
End Class