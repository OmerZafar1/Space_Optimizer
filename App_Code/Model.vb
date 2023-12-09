Imports Microsoft.VisualBasic
Imports System.Data.SqlClient

Public Class Model
    Private Shared connectionString As String = "Data Source=ZQ;Initial Catalog=EMS;Integrated Security=True"
    Private Shared connection As SqlConnection

    Private Sub New()
        ' Private constructor to prevent instantiation from outside the class
    End Sub

    Public Shared Function GetInstance() As SqlConnection
        If connection Is Nothing Then
            connection = New SqlConnection(connectionString)
            Try
                connection.Open()
            Catch ex As Exception

            End Try
        End If

        Return connection
    End Function

End Class
