Public Class contato_novo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs)
        Dim msg As String
        If (dsNovoContato.Insert() > 0) Then
            msg = "<div class='container p-2'>
                        <div class='notification is-success'>
                            <p> O contato foi <strong> registrado com sucesso</strong>!</p>
                        </div>
                   </div>"
        Else
            msg = "<div class='container p-2'>
                        <div class='notification is-danger'>
                            <p> O contato foi <strong> não foi registrado! </strong></p>
                        </div>
                   </div>"
        End If
        System.Web.HttpContext.Current.Session("mensagem") = msg
        Response.Redirect("index.aspx")
    End Sub
End Class