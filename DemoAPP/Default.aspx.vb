Imports System.Data.SqlClient

Public Class _Default
    Inherits Page
    Dim connect As New SqlConnection("Server=SPARTAN\\SQLSERVER2017;Database=POC_DB;Integrated Security=true")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim TaskId As String = txtTaskId.Text
        Dim Title As String = txtTitle.Text
        Dim Description As String = txtDescription.Text
        Dim Priority As String = dropPriority.SelectedValue

        connect.Open()
        Dim command As New SqlCommand("insert into Tasks values('" & TaskId & "', '" & Title & "', '" & Description & "')")
        command.ExecuteNonQuery()
        connect.Close()
        MsgBox("Successfully insrted", MsgBoxStyle.Information, "Message")

        ListTask()

    End Sub

    Private Sub ListTask()
        connect.Open()
        Dim command As New SqlCommand("select * from Tasks")
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt

    End Sub


End Class