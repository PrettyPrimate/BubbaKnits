Imports System.Net.Mail
Partial Class Contact
    Inherits System.Web.UI.Page
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click

        Try
            Dim SmtpServer As New SmtpClient()
            Dim mail As New MailMessage()
            SmtpServer.Credentials = New Net.NetworkCredential("info@PRETTYPRIMATE.COM", "bagpuss1")
            SmtpServer.Port = 80
            SmtpServer.Host = "smtpout.europe.secureserver.net "
            mail = New MailMessage()
            mail.From = New MailAddress(emailTextBox.Text)
            mail.To.Add("info@bubbaknits.co.uk")
            mail.To.Add("davidbubb1@gmail.com")
            mail.Subject = typeDropDown.SelectedItem.Text
            mail.Body = enqTextBox.Text
            SmtpServer.Send(mail)
            'MsgBox("Thank you for your enquiry")
        Catch ex As Exception

        End Try

    End Sub
End Class
