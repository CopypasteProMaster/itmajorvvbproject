Imports MySql.Data.MySqlClient
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO
Imports System.Reflection.Metadata
'DBO_PRODUCT   PRO_ID,PRO_NAME,PRO_GRP,UNITS_STK,STATUS
Public Class Form1
    Dim conn As New MySqlConnection("server=localhost;port=3306;username=root;password=;database=vb")
    Dim i As Integer
    Dim r As MySqlDataReader
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        DGV_load()
        DGV_load_purchased()
        DGV_load_DEPOSITS()
    End Sub
    Public Sub DGV_load()
        DataGridView1.Rows.Clear()
        Try
            conn.Open()
            DataGridView1.Rows.Clear() ' Clear existing rows before loading new data

            Dim cmd As New MySqlCommand("SELECT * FROM DBO_PRODUCT", conn)
            r = cmd.ExecuteReader
            While r.Read
                DataGridView1.Rows.Add(r("PRO_ID"), r("PRO_NAME"), r("PRO_GRP"), r("UNITS_STK"), r("STATUS"), r("PRICE"))
            End While
        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            If r IsNot Nothing Then
                r.Close()
            End If
        End Try
        '== ADDED FOR THE COMBOBXTXT
        PRO_ID_COMBO.Items.Clear()
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("SELECT PRO_ID FROM DBO_PRODUCT", conn)
            Dim reader As MySqlDataReader = cmd.ExecuteReader()
            While reader.Read()
                PRO_ID_COMBO.Items.Add(reader("PRO_ID").ToString())
            End While
        Catch ex As Exception
            MessageBox.Show("Error loading PRO_ID data: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
        '====
        clearing()
    End Sub

    Private Sub btn_save_Click(sender As Object, e As EventArgs) Handles btn_save.Click
        save()
        DGV_load() ' Reload data after saving
    End Sub

    Public Sub save()
        Try
            'PRO_ID,PRO_NAME,PRO_GRP,UNITS_STK,STATUS
            conn.Open()
            Dim cmd As New MySqlCommand("INSERT INTO `DBO_PRODUCT`(`PRO_ID`, `PRO_NAME`, `PRO_GRP`, `UNITS_STK`, `STATUS`, `PRICE`) VALUES (@PRO_ID,@PRO_NAME,@PRO_GRP,@UNITS_STK,@STATUS,@PRICE)", conn)
            cmd.Parameters.AddWithValue("@PRO_ID", prono.Text)
            cmd.Parameters.AddWithValue("@PRO_NAME", proname.Text)
            cmd.Parameters.AddWithValue("@PRO_GRP", pro_grp.Text)
            cmd.Parameters.AddWithValue("@UNITS_STK", CDec(UNITS.Text))
            cmd.Parameters.AddWithValue("@PRICE", PRICE.Text)
            cmd.Parameters.AddWithValue("@STATUS", CBool(stat.Checked))
            i = cmd.ExecuteNonQuery()
            If i > 0 Then
                MessageBox.Show("Record Saved", "DBO_PRODUCT", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Record Not Saved", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
    End Sub

    Public Sub clearing()
        prono.Clear()
        proname.Clear()
        UNITS.Clear()
        PRICE.Clear()
        pro_grp.Text = ""
        stat.CheckState = False
    End Sub

    Private Sub DataGridView1_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        prono.Text = DataGridView1.CurrentRow.Cells(0).Value.ToString
        proname.Text = DataGridView1.CurrentRow.Cells(1).Value.ToString
        pro_grp.Text = DataGridView1.CurrentRow.Cells(2).Value.ToString
        UNITS.Text = DataGridView1.CurrentRow.Cells(3).Value.ToString
        prono.ReadOnly = True
        btn_save.Enabled = False

        ' Convert value to CheckState enumeration
        Dim isChecked = Convert.ToBoolean(DataGridView1.CurrentRow.Cells(4).Value)
        If isChecked Then
            stat.Checked = CheckState.Checked
        Else
            stat.Checked = CheckState.Unchecked
        End If
        PRICE.Text = DataGridView1.CurrentRow.Cells(5).Value.ToString
    End Sub
    Sub edit()
        'PRO_ID,PRO_NAME,PRO_GRP,UNITS_STK,STATUS,PRICE
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("UPDATE `DBO_PRODUCT` SET `PRO_ID`=@PRO_ID,`PRO_NAME`=@PRO_NAME,`PRO_GRP`=@PRO_GRP,`UNITS_STK`=@UNITS_STK,`PRICE`=@PRICE,`STATUS`=@STATUS WHERE `PRO_ID` = @PRO_ID", conn)
            cmd.Parameters.AddWithValue("@PRO_ID", prono.Text)
            cmd.Parameters.AddWithValue("@PRO_NAME", proname.Text)
            cmd.Parameters.AddWithValue("@PRO_GRP", pro_grp.Text)
            cmd.Parameters.AddWithValue("@UNITS_STK", CDec(UNITS.Text))
            cmd.Parameters.AddWithValue("@PRICE", PRICE.Text)
            cmd.Parameters.AddWithValue("@STATUS", CBool(stat.Checked))
            i = cmd.ExecuteNonQuery()
            If i > 0 Then
                MessageBox.Show("Record Updated", "DBO_PRODUCT", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Record Not Updated", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
        DGV_load()
    End Sub
    Private Sub update_Click(sender As Object, e As EventArgs) Handles update.Click
        edit()
    End Sub
    Public Sub delete_id()

        If MsgBox("Are you sure do Delete this product?", MsgBoxStyle.Question + vbYesNo) = vbYes Then
            Try
                conn.Open()
                Dim cmd As New MySqlCommand("DELETE FROM `DBO_PRODUCT`  WHERE `PRO_ID` = @PRO_ID", conn)
                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@PRO_ID", prono.Text)
                i = cmd.ExecuteNonQuery

                If i > 0 Then
                    MessageBox.Show("Record DELETED", "DBO_PRODUCT", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Else
                    MessageBox.Show("Record Not DELETED", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
                End If
            Catch ex As Exception
                MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Finally
                conn.Close()
            End Try
            clearing()
            DGV_load()
        Else
            Return

        End If

    End Sub
    Private Sub delete_Click(sender As Object, e As EventArgs) Handles delete.Click
        delete_id()
    End Sub

    Private Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        clearing()
    End Sub

    Private Sub search_TextChanged(sender As Object, e As EventArgs) Handles search.TextChanged
        Dim searchText As String = search.Text.Trim()
        ' Check if the search text is empty
        If searchText = "" Then
            ' If search text is empty, reload all data
            DGV_load()
            Return
        End If
        DataGridView1.Rows.Clear()
        'PRO_ID,PRO_NAME,PRO_GRP,UNITS_STK,STATUS,PRICE
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("SELECT * FROM DBO_PRODUCT WHERE PRO_NAME OR PRO_ID  LIKE @searchText", conn)
            cmd.Parameters.AddWithValue("@searchText", "%" & searchText & "%")
            Dim r As MySqlDataReader = cmd.ExecuteReader()

            While r.Read
                DataGridView1.Rows.Add(r("PRO_ID"), r("PRO_NAME"), r("PRO_GRP"), r("UNITS_STK"), r("STATUS"), r("PRICE"))
            End While

        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            conn.Close()
        End Try
    End Sub
    Private Sub UNITS_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles UNITS.KeyPress
        If Not Char.IsDigit(e.KeyChar) AndAlso e.KeyChar <> "." AndAlso e.KeyChar <> "," AndAlso Not Char.IsControl(e.KeyChar) Then
            e.Handled = True '
        End If
    End Sub
    Private Sub PRICE_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles PRICE.KeyPress
        If Not Char.IsDigit(e.KeyChar) AndAlso e.KeyChar <> "." AndAlso e.KeyChar <> "," AndAlso Not Char.IsControl(e.KeyChar) Then
            e.Handled = True
        End If
    End Sub

    'Codes for BDO_PRO_ORDER
    Private Sub SAVE_PURCHASE_Click(sender As Object, e As EventArgs) Handles SAVE_PURCHASE.Click
        SAVE_PURCHASED()
        DGV_load_purchased()

    End Sub
    Public Sub DGV_load_purchased()
        purchased_list.Rows.Clear()
        Try
            conn.Open()
            purchased_list.Rows.Clear() ' Clear existing rows before loading new data

            Dim cmd As New MySqlCommand("SELECT * FROM BDO_PRO_ORDER", conn)
            r = cmd.ExecuteReader
            While r.Read
                purchased_list.Rows.Add(r("PRO_ID"), r("COSTUMER_ID"), r("FULLNAME"), r("ADDRESS"), r("CONTACT"), r("PRODUCT_PUR"), r("PAID"), r("DATE_PAID"), r("QUANTITY"), r("BALANCE"))
            End While
        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            If r IsNot Nothing Then
                r.Close()
            End If
        End Try
        '==
    End Sub
    Private Sub PURCHASED_SEARCH_TextChanged(sender As Object, e As EventArgs) Handles PURCHASED_SEARCH.TextChanged
        Dim searchText_1 = PURCHASED_SEARCH.Text.Trim
        ' Check if the search text is empty
        If searchText_1 = "" Then
            ' If search text is empty, reload all data
            DGV_load_purchased()
            Return
        End If
        purchased_list.Rows.Clear()
        'PRO_ID,PRO_NAME,PRO_GRP,UNITS_STK,STATUS,PRICE
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("SELECT * FROM BDO_PRO_ORDER WHERE FULLNAME LIKE @searchText OR PRO_ID LIKE @searchText OR COSTUMER_ID LIKE @searchText", conn)
            cmd.Parameters.AddWithValue("@searchText", "%" & searchText_1 & "%")
            Dim r = cmd.ExecuteReader

            While r.Read
                purchased_list.Rows.Add(r("PRO_ID"), r("COSTUMER_ID"), r("FULLNAME"), r("ADDRESS"), r("CONTACT"), r("PRODUCT_PUR"), r("PAID"), r("DATE_PAID"), r("QUANTITY"), r("BALANCE"))
            End While

        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            conn.Close()
        End Try
    End Sub
    Public Sub SAVE_PURCHASED()
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("INSERT INTO `BDO_PRO_ORDER`(`PRO_ID`, `COSTUMER_ID`, `FULLNAME`, `ADDRESS`, `CONTACT`,`PRODUCT_PUR`,`PAID`,`DATE_PAID`,`QUANTITY`,`BALANCE`) VALUES (@PRO_ID,@COSTUMER_ID,@FULLNAME,@ADDRESS,@CONTACT,@PRODUCT_PUR,@PAID,@DATE_PAID,@QUANTITY,@BALANCE)", conn)
            cmd.Parameters.AddWithValue("@PRO_ID", PRO_ID_COMBO.Text)
            cmd.Parameters.AddWithValue("@COSTUMER_ID", COS_ID.Text)
            cmd.Parameters.AddWithValue("@FULLNAME", FULLNAME.Text)
            cmd.Parameters.AddWithValue("@ADDRESS", ADDRESS.Text)
            cmd.Parameters.AddWithValue("@CONTACT", CONTACT.Text)
            cmd.Parameters.AddWithValue("@PRODUCT_PUR", PORC_NAME.Text)
            cmd.Parameters.AddWithValue("@PAID", DEPOSIT.Text)
            cmd.Parameters.AddWithValue("@DATE_PAID", DATE_PUR.Text)
            cmd.Parameters.AddWithValue("@QUANTITY", QTY.Text)
            cmd.Parameters.AddWithValue("@BALANCE", BALANCE.Text)

            i = cmd.ExecuteNonQuery()
            If i > 0 Then
                ' If the record is saved successfully, generate a PDF
                GeneratePDF()
                MessageBox.Show("Record Saved", "BDO_PRO_ORDER", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Record Not Saved", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
    End Sub
    Private Sub GeneratePDF()
        Dim doc As New iTextSharp.text.Document()

        ' Construct the base file name based on the FULLNAME field
        Dim baseFileName As String = FULLNAME.Text & ".pdf"

        ' Construct the full file path
        Dim fileName As String = "Z:\source\repos\CRUD_ITMAJORPROJECT_cpy\" & baseFileName

        ' If the file already exists, append a number to the file name
        Dim counter As Integer = 1
        While File.Exists(fileName)
            baseFileName = FULLNAME.Text & "(" & counter & ").pdf"
            fileName = "Z:\source\repos\CRUD_ITMAJORPROJECT_cpy\" & baseFileName
            counter += 1
        End While

        Dim output As New FileStream(fileName, FileMode.Create)
        PdfWriter.GetInstance(doc, output)
        doc.Open()

        ' Add content to the PDF document
        doc.Add(New iTextSharp.text.Paragraph("Purchase Order Details"))
        doc.Add(New iTextSharp.text.Paragraph("PRO_ID: " & PRO_ID_COMBO.Text))
        doc.Add(New iTextSharp.text.Paragraph("Customer ID: " & COS_ID.Text))
        doc.Add(New iTextSharp.text.Paragraph("Full Name: " & FULLNAME.Text))
        doc.Add(New iTextSharp.text.Paragraph("Address: " & ADDRESS.Text))
        doc.Add(New iTextSharp.text.Paragraph("Contact: " & CONTACT.Text))
        doc.Add(New iTextSharp.text.Paragraph("Product Purchased: " & PORC_NAME.Text))
        doc.Add(New iTextSharp.text.Paragraph("Amount Paid: " & DEPOSIT.Text))
        doc.Add(New iTextSharp.text.Paragraph("Date Paid: " & DATE_PUR.Text))
        doc.Add(New iTextSharp.text.Paragraph("Quantity: " & QTY.Text))
        doc.Add(New iTextSharp.text.Paragraph("Balance: " & BALANCE.Text))

        ' Close the document
        doc.Close()
    End Sub
    Private Sub purchased_list_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles purchased_list.CellContentClick
        PRO_ID_COMBO.Text = purchased_list.CurrentRow.Cells(0).Value.ToString
        COS_ID.Text = purchased_list.CurrentRow.Cells(1).Value.ToString
        FULLNAME.Text = purchased_list.CurrentRow.Cells(2).Value.ToString
        ADDRESS.Text = purchased_list.CurrentRow.Cells(3).Value.ToString
        CONTACT.Text = purchased_list.CurrentRow.Cells(4).Value.ToString
        PORC_NAME.Text = purchased_list.CurrentRow.Cells(5).Value.ToString
        DEPOSIT.Text = purchased_list.CurrentRow.Cells(6).Value.ToString
        DATE_PUR.Text = purchased_list.CurrentRow.Cells(7).Value.ToString
        QTY.Text = purchased_list.CurrentRow.Cells(8).Value.ToString
        BALANCE.Text = purchased_list.CurrentRow.Cells(9).Value.ToString
        PRO_ID_COMBO.Enabled = False
        COS_ID.ReadOnly = True
        SAVE_PURCHASE.Enabled = False
    End Sub
    Sub edit_purchased()
        'PRO_ID, COSTUMER_ID, FULLNAME, ADDRESS, CONTACT, PRODUCT_PUR, PAID, DATE_PAID, QUANTITY, BALANCE
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("UPDATE `BDO_PRO_ORDER` SET `FULLNAME`=@FULLNAME, `ADDRESS`=@ADDRESS, `CONTACT`=@CONTACT, `PRODUCT_PUR`=@PRODUCT_PUR, `PAID`=@PAID, `DATE_PAID`=@DATE_PAID, `QUANTITY`=@QUANTITY, `BALANCE`=@BALANCE WHERE `FULLNAME` = @FULLNAME", conn)

            cmd.Parameters.AddWithValue("@FULLNAME", FULLNAME.Text)
            cmd.Parameters.AddWithValue("@ADDRESS", ADDRESS.Text)
            cmd.Parameters.AddWithValue("@CONTACT", CONTACT.Text)
            cmd.Parameters.AddWithValue("@PRODUCT_PUR", PORC_NAME.Text)
            cmd.Parameters.AddWithValue("@PAID", DEPOSIT.Text)
            cmd.Parameters.AddWithValue("@DATE_PAID", DATE_PUR.Text)
            cmd.Parameters.AddWithValue("@QUANTITY", QTY.Text)
            cmd.Parameters.AddWithValue("@BALANCE", BALANCE.Text)

            i = cmd.ExecuteNonQuery()
            If i > 0 Then
                MessageBox.Show("Record Updated", "BDO_PRO_ORDER", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Record Not Updated", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
        DGV_load_purchased()
    End Sub


    Private Sub update_by_Click(sender As Object, e As EventArgs) Handles update_by.Click
        edit_purchased()
    End Sub

    Public Sub clearing_purchased()
        PRO_ID_COMBO.Text = ""
        COS_ID.Clear()
        FULLNAME.Clear()
        ADDRESS.Clear()
        CONTACT.Clear()
        PORC_NAME.Clear()
        DEPOSIT.Clear()
        DATE_PUR.Value = Now
        QTY.Clear()
        BALANCE.Clear()
        ADDRESS.Clear()
        PRO_ID_COMBO.Enabled = True
        COS_ID.ReadOnly = False
    End Sub
    Private Sub clr_by_Click(sender As Object, e As EventArgs) Handles clr_by.Click
        clearing_purchased()
    End Sub
    Public Sub delete_id_purchased()

        If MsgBox("Are you sure do Delete this product?", MsgBoxStyle.Question + vbYesNo) = vbYes Then
            Try
                conn.Open()
                Dim cmd As New MySqlCommand("DELETE FROM `BDO_PRO_ORDER`  WHERE `FULLNAME` = @FULLNAME", conn)
                cmd.Parameters.Clear()
                cmd.Parameters.AddWithValue("@FULLNAME", FULLNAME.Text)
                i = cmd.ExecuteNonQuery

                If i > 0 Then
                    MessageBox.Show("Record DELETED", "BDO_PRO_ORDER", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Else
                    MessageBox.Show("Record Not DELETED", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
                End If
            Catch ex As Exception
                MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Finally
                conn.Close()
            End Try
            clearing()
            DGV_load_purchased()
        Else
            Return

        End If

    End Sub
    Private Sub delete_by_Click(sender As Object, e As EventArgs) Handles delete_by.Click
        delete_id_purchased()
    End Sub

    '=Rec 
    Public Sub SAVE_DEPOSIT_REC()
        Try
            conn.Open()
            Dim cmd As New MySqlCommand("INSERT INTO `REC_1`(`ID`,`PRO_ID`,`COSTUMER_ID`, `FULLNAME`, `PAID`, `BALANCE`,`DATE`) VALUES (@ID,@PRO_ID,@COSTUMER_ID,@FULLNAME,@PAID,@BALANCE,@DATE)", conn)
            cmd.Parameters.AddWithValue("@ID", hiddenid.Text)
            cmd.Parameters.AddWithValue("@PRO_ID", PRODUCT_NO.Text)
            cmd.Parameters.AddWithValue("@COSTUMER_ID", COSTUMER_ID.Text)
            cmd.Parameters.AddWithValue("@FULLNAME", FULLNAME_COSTUMER.Text)
            cmd.Parameters.AddWithValue("@PAID", DEPOSITed_from_costumer.Text)
            cmd.Parameters.AddWithValue("@BALANCE", BALANCE_.Text)
            cmd.Parameters.AddWithValue("@DATE", DATE_DEPOSIT.Text)


            i = cmd.ExecuteNonQuery()
            If i > 0 Then
                ' If the record is saved successfully, generate a PDF
                GeneratePDF_DEPOSIT()
                MessageBox.Show("Record Saved", "REC", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Record Not Saved", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End If
        Catch ex As Exception
            MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Finally
            conn.Close()
        End Try
        DGV_load_DEPOSITS()
    End Sub

    Private Sub GeneratePDF_DEPOSIT()
        Dim doc As New iTextSharp.text.Document()

        ' Construct the base file name based on the FULLNAME field
        Dim baseFileName As String = FULLNAME.Text & ".pdf"

        ' Construct the full file path
        Dim fileName As String = "Z:\source\repos\CRUD_ITMAJORPROJECT_cpy\" & "DEPOSIT" & baseFileName

        ' If the file already exists, append a number to the file name
        Dim counter As Integer = 1
        While File.Exists(fileName)
            baseFileName = "DEPOSIT" & FULLNAME.Text & "(" & counter & ").pdf"
            fileName = "Z:\source\repos\CRUD_ITMAJORPROJECT_cpy\" & "DEPOSIT" & baseFileName
            counter += 1
        End While

        Dim output As New FileStream(fileName, FileMode.Create)
        PdfWriter.GetInstance(doc, output)
        doc.Open()

        ' Add content to the PDF document
        doc.Add(New iTextSharp.text.Paragraph("Deposit Details"))
        doc.Add(New iTextSharp.text.Paragraph("Customer ID: " & COSTUMER_ID.Text))
        doc.Add(New iTextSharp.text.Paragraph("Full Name: " & FULLNAME_COSTUMER.Text))
        doc.Add(New iTextSharp.text.Paragraph("Deposit: " & DEPOSITed_from_costumer.Text))
        doc.Add(New iTextSharp.text.Paragraph("Balance: " & BALANCE_.Text))
        doc.Add(New iTextSharp.text.Paragraph("Date Deposited: " & DATE_DEPOSIT.Text))

        ' Close the document
        doc.Close()
    End Sub
    Public Sub DGV_load_DEPOSITS()
        LIST_DEPOSITS_of_costumers.Rows.Clear()
        Try
            conn.Open()
            LIST_DEPOSITS_of_costumers.Rows.Clear() ' Clear existing rows before loading new data

            Dim cmd As New MySqlCommand("SELECT * FROM REC_1", conn)
            r = cmd.ExecuteReader
            While r.Read
                LIST_DEPOSITS_of_costumers.Rows.Add(r("ID"), r("PRO_ID"), r("COSTUMER_ID"), r("FULLNAME"), r("PAID"), r("BALANCE"), r("DATE"))
            End While
        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            If conn.State = ConnectionState.Open Then
                conn.Close()
            End If
            If r IsNot Nothing Then
                r.Close()
            End If
        End Try
        '==
    End Sub
    '`(`PRO_ID`,`COSTUMER_ID`, `FULLNAME`, `PAID`, `BALANCE`,`DATE


    Private Sub SAVE_DEPOSIT_Click(sender As Object, e As EventArgs) Handles SAVE_DEPOSIT.Click
        SAVE_DEPOSIT_REC()
        DGV_load_DEPOSITS()

    End Sub



    Private Sub LIST_DEPOSITS_of_costumers_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles LIST_DEPOSITS_of_costumers.CellContentClick
        hiddenid.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(0).Value.ToString
        PRODUCT_NO.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(1).Value.ToString
        COSTUMER_ID.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(2).Value.ToString
        FULLNAME_COSTUMER.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(3).Value.ToString
        DEPOSITed_from_costumer.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(4).Value.ToString
        BALANCE_.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(5).Value.ToString
        DATE_DEPOSIT.Text = LIST_DEPOSITS_of_costumers.CurrentRow.Cells(6).Value.ToString
        SAVE_DEPOSIT.Enabled = False
    End Sub
    Public Sub clearing_deposited_from_costumers()
        hiddenid.Clear()
        PRODUCT_NO.Clear()
        COSTUMER_ID.Clear()
        FULLNAME_COSTUMER.Clear()
        DEPOSITed_from_costumer.Clear()
        BALANCE_.Clear()
        DATE_DEPOSIT.Value = Now
        SAVE_DEPOSIT.Enabled = True
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        clearing_deposited_from_costumers()
    End Sub
    Public Sub delete_customer_balance()
        If MsgBox("Are you sure you want to delete this record?", MsgBoxStyle.Question + vbYesNo) = vbYes Then
            Try
                conn.Open()

                ' Get the values of the selected row
                Dim selectedPRO_ID As String = hiddenid.Text ' Assuming PRODUCT_NO.Text is the value of the PRO_ID column for the selected row
                ' Dim selectedID As Integer = CInt(DGV.CurrentRow.Cells("ID").Value) ' Uncomment and adapt this line if you have access to the ID column

                ' Construct the DELETE query using the values of the selected row
                Dim cmd As New MySqlCommand("DELETE FROM `REC_1` WHERE `ID` = @ID", conn)
                cmd.Parameters.AddWithValue("@ID", selectedPRO_ID)

                Dim rowsAffected As Integer = cmd.ExecuteNonQuery()

                If rowsAffected > 0 Then
                    MessageBox.Show("Record with PRO_ID '" & selectedPRO_ID & "' DELETED", "REC_1", MessageBoxButtons.OK, MessageBoxIcon.Information)
                Else
                    MessageBox.Show("Record with PRO_ID '" & selectedPRO_ID & "' not found or cannot be deleted", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error)
                End If
            Catch ex As Exception
                MessageBox.Show("Error: " & ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            Finally
                conn.Close()
            End Try
            clearing()
            DGV_load_DEPOSITS()
        End If
    End Sub


    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        delete_customer_balance()

    End Sub

    Private Sub search_costumer_balance_TextChanged(sender As Object, e As EventArgs) Handles search_costumer_balance.TextChanged
        Dim searchText_1 = search_costumer_balance.Text.Trim
        If searchText_1 = "" Then
            ' If search text is empty, reload all data
            DGV_load_DEPOSITS()
            Return
        End If
        LIST_DEPOSITS_of_costumers.Rows.Clear()

        Try
            conn.Open()
            Dim cmd As New MySqlCommand("SELECT * FROM REC_1 WHERE FULLNAME LIKE @searchText OR PRO_ID LIKE @searchText OR COSTUMER_ID LIKE @searchText", conn)
            cmd.Parameters.AddWithValue("@searchText", "%" & searchText_1 & "%")
            Dim r = cmd.ExecuteReader

            While r.Read
                LIST_DEPOSITS_of_costumers.Rows.Add(r("ID"), r("PRO_ID"), r("COSTUMER_ID"), r("FULLNAME"), r("PAID"), r("BALANCE"), r("DATE"))
            End While

        Catch ex As Exception
            MsgBox("Error loading data: " & ex.Message)
        Finally
            conn.Close()
        End Try
    End Sub
End Class

