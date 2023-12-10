Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class Model
    Private connectionString As String = "Data Source=ZQ;Initial Catalog=EMS;Integrated Security=True"
    Private connection As SqlConnection

    Public Sub New()
        If connection Is Nothing Then
            connection = New SqlConnection(connectionString)
            Try
                connection.Open()
            Catch ex As Exception

            End Try
        End If
    End Sub

    Public Function ExecuteSP(StoredProc As String, values As Hashtable) As DataTable
        Dim resultTable As New DataTable()
        Using command As New SqlCommand(StoredProc, connection)
            command.CommandType = CommandType.StoredProcedure

            ' Add parameters using the foreach loop
            For Each key As Object In values.Keys
                command.Parameters.AddWithValue("P_" & key.ToString(), values(key).ToString())
            Next

            Try
                Using adapter As New SqlDataAdapter(command)
                    ' Fill the DataTable with data from the stored procedure
                    adapter.Fill(resultTable)
                End Using
            Catch ex As Exception
                ' Handle any exceptions if needed
            End Try
        End Using

        Return resultTable
    End Function


End Class
