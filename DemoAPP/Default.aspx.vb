Imports System.Data.SqlClient
Imports DemoAPP.Business.TaskMnagement

Public Class _Default
    Inherits Page
    Dim connect As New SqlConnection("Data Source=SPARTAN\SQLSERVER2017;Initial Catalog=VB_DB;Integrated Security=True;Connect Timeout=30;Encrypt=False")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ListTask()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim TaskId As String = txtTaskId.Text
        Dim Title As String = txtTitle.Text
        Dim Description As String = txtDescription.Text
        Dim Priority As String = dropPriority.SelectedValue

        connect.Open()
        Dim command As New SqlCommand("insert into Tasks values('" & TaskId & "', '" & Title & "', '" & Description & "', '" & Priority & "')", connect)
        command.ExecuteNonQuery()
        connect.Close()
        MsgBox("Task successfully insrted", MsgBoxStyle.Information, "Message")

        ListTask()

    End Sub

    Private Sub ListTask()
        connect.Open()
        Dim command As New SqlCommand("select * from Tasks", connect)
        Dim sd As New SqlDataAdapter(command)
        Dim dt As New DataTable
        sd.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
        connect.Close()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        connect.Open()
        Dim TaskId As String = txtTaskId.Text
        Dim Title As String = txtTitle.Text
        Dim Description As String = txtDescription.Text
        Dim Priority As String = dropPriority.SelectedValue

        Dim command As New SqlCommand("update Tasks set Title='" & Title & "',Description='" & Description & "',Priority='" & Priority & "' where TaskId='" & TaskId & "'", connect)
        command.ExecuteNonQuery()
        connect.Close()
        MsgBox("Task successfully updated", MsgBoxStyle.Information, "Message")

    End Sub


End Class