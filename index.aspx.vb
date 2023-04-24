Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsNothing(System.Web.HttpContext.Current.Session("mensagem"))) Then
            mensagem.Text = ""
        Else
            mensagem.Text = System.Web.HttpContext.Current.Session("mensagem").ToString()
            System.Web.HttpContext.Current.Session("mensagem") = ""
        End If
    End Sub

End Class