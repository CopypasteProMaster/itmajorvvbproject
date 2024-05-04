<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        prono = New TextBox()
        proname = New TextBox()
        UNITS = New TextBox()
        pro_grp = New ComboBox()
        stat = New CheckBox()
        btn_save = New Button()
        update = New Button()
        delete = New Button()
        clear = New Button()
        Label1 = New Label()
        Label2 = New Label()
        Label3 = New Label()
        Label4 = New Label()
        DataGridView1 = New DataGridView()
        Column7 = New DataGridViewTextBoxColumn()
        Column2 = New DataGridViewTextBoxColumn()
        Column4 = New DataGridViewTextBoxColumn()
        Column3 = New DataGridViewTextBoxColumn()
        Column6 = New DataGridViewCheckBoxColumn()
        Column5 = New DataGridViewTextBoxColumn()
        Label6 = New Label()
        search = New TextBox()
        PRICE = New TextBox()
        Label5 = New Label()
        COS_ID = New TextBox()
        FULLNAME = New TextBox()
        ADDRESS = New TextBox()
        CONTACT = New TextBox()
        BALANCE = New TextBox()
        QTY = New TextBox()
        DEPOSIT = New TextBox()
        PORC_NAME = New TextBox()
        Label7 = New Label()
        Label8 = New Label()
        Label9 = New Label()
        Label10 = New Label()
        Label11 = New Label()
        Label12 = New Label()
        Label13 = New Label()
        Label14 = New Label()
        Label15 = New Label()
        Label16 = New Label()
        PRO_ID_COMBO = New ComboBox()
        DATE_PUR = New DateTimePicker()
        purchased_list = New DataGridView()
        DataGridViewTextBoxColumn1 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn2 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn3 = New DataGridViewTextBoxColumn()
        Column11 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn4 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn5 = New DataGridViewTextBoxColumn()
        Column1 = New DataGridViewTextBoxColumn()
        Column8 = New DataGridViewTextBoxColumn()
        Column9 = New DataGridViewTextBoxColumn()
        Column10 = New DataGridViewTextBoxColumn()
        SAVE_PURCHASE = New Button()
        update_by = New Button()
        delete_by = New Button()
        clr_by = New Button()
        PURCHASED_SEARCH = New TextBox()
        Label17 = New Label()
        PRODUCT_NO = New TextBox()
        COSTUMER_ID = New TextBox()
        FULLNAME_COSTUMER = New TextBox()
        DEPOSITed_from_costumer = New TextBox()
        BALANCE_ = New TextBox()
        Label18 = New Label()
        Label19 = New Label()
        Label20 = New Label()
        Label21 = New Label()
        Label22 = New Label()
        Label24 = New Label()
        LIST_DEPOSITS_of_costumers = New DataGridView()
        Column16 = New DataGridViewTextBoxColumn()
        Column13 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn7 = New DataGridViewTextBoxColumn()
        DataGridViewTextBoxColumn8 = New DataGridViewTextBoxColumn()
        Column12 = New DataGridViewTextBoxColumn()
        Column14 = New DataGridViewTextBoxColumn()
        Column15 = New DataGridViewTextBoxColumn()
        SAVE_DEPOSIT = New Button()
        DATE_DEPOSIT = New DateTimePicker()
        Button1 = New Button()
        Button2 = New Button()
        hiddenid = New TextBox()
        Label23 = New Label()
        search_costumer_balance = New TextBox()
        CType(DataGridView1, ComponentModel.ISupportInitialize).BeginInit()
        CType(purchased_list, ComponentModel.ISupportInitialize).BeginInit()
        CType(LIST_DEPOSITS_of_costumers, ComponentModel.ISupportInitialize).BeginInit()
        SuspendLayout()
        ' 
        ' prono
        ' 
        prono.Location = New Point(41, 29)
        prono.Name = "prono"
        prono.Size = New Size(206, 23)
        prono.TabIndex = 0
        ' 
        ' proname
        ' 
        proname.Location = New Point(41, 90)
        proname.Name = "proname"
        proname.Size = New Size(206, 23)
        proname.TabIndex = 1
        ' 
        ' UNITS
        ' 
        UNITS.Location = New Point(40, 224)
        UNITS.Name = "UNITS"
        UNITS.PlaceholderText = "0"
        UNITS.Size = New Size(206, 23)
        UNITS.TabIndex = 2
        ' 
        ' pro_grp
        ' 
        pro_grp.FormattingEnabled = True
        pro_grp.Items.AddRange(New Object() {"Toyota", "Honda", "Ford", "Chevrolet", "Volkswagen (VW)", "BMW (Bayerische Motoren Werke)", "Mercedes-Benz", "Audi", "Nissan", "Hyundai", "Kia", "Tesla", "Subaru", "Lexus", "Mazda"})
        pro_grp.Location = New Point(40, 163)
        pro_grp.Name = "pro_grp"
        pro_grp.Size = New Size(206, 23)
        pro_grp.TabIndex = 3
        ' 
        ' stat
        ' 
        stat.AutoSize = True
        stat.Location = New Point(94, 350)
        stat.Name = "stat"
        stat.Size = New Size(72, 19)
        stat.TabIndex = 5
        stat.Text = "available"
        stat.UseVisualStyleBackColor = True
        ' 
        ' btn_save
        ' 
        btn_save.Location = New Point(34, 375)
        btn_save.Name = "btn_save"
        btn_save.Size = New Size(75, 23)
        btn_save.TabIndex = 6
        btn_save.Text = "Save"
        btn_save.UseVisualStyleBackColor = True
        ' 
        ' update
        ' 
        update.Location = New Point(144, 375)
        update.Name = "update"
        update.Size = New Size(75, 23)
        update.TabIndex = 7
        update.Text = "Update"
        update.UseVisualStyleBackColor = True
        ' 
        ' delete
        ' 
        delete.Location = New Point(34, 404)
        delete.Name = "delete"
        delete.Size = New Size(75, 23)
        delete.TabIndex = 8
        delete.Text = "Delete"
        delete.UseVisualStyleBackColor = True
        ' 
        ' clear
        ' 
        clear.Location = New Point(144, 404)
        clear.Name = "clear"
        clear.Size = New Size(75, 23)
        clear.TabIndex = 9
        clear.Text = "Clear"
        clear.UseVisualStyleBackColor = True
        ' 
        ' Label1
        ' 
        Label1.AutoSize = True
        Label1.Location = New Point(41, 11)
        Label1.Name = "Label1"
        Label1.Size = New Size(68, 15)
        Label1.TabIndex = 10
        Label1.Text = "Product No"
        ' 
        ' Label2
        ' 
        Label2.AutoSize = True
        Label2.Location = New Point(41, 72)
        Label2.Name = "Label2"
        Label2.Size = New Size(84, 15)
        Label2.TabIndex = 11
        Label2.Text = "Product Name"
        ' 
        ' Label3
        ' 
        Label3.AutoSize = True
        Label3.Location = New Point(40, 201)
        Label3.Name = "Label3"
        Label3.Size = New Size(85, 15)
        Label3.TabIndex = 12
        Label3.Text = "Units Available"
        ' 
        ' Label4
        ' 
        Label4.AutoSize = True
        Label4.Location = New Point(40, 136)
        Label4.Name = "Label4"
        Label4.Size = New Size(85, 15)
        Label4.TabIndex = 13
        Label4.Text = "Product Group"
        ' 
        ' DataGridView1
        ' 
        DataGridView1.AllowUserToAddRows = False
        DataGridView1.AllowUserToDeleteRows = False
        DataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridView1.Columns.AddRange(New DataGridViewColumn() {Column7, Column2, Column4, Column3, Column6, Column5})
        DataGridView1.Location = New Point(12, 486)
        DataGridView1.Name = "DataGridView1"
        DataGridView1.ReadOnly = True
        DataGridView1.RowHeadersVisible = False
        DataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect
        DataGridView1.Size = New Size(521, 324)
        DataGridView1.TabIndex = 15
        ' 
        ' Column7
        ' 
        Column7.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column7.HeaderText = "Poduct No."
        Column7.Name = "Column7"
        Column7.ReadOnly = True
        Column7.Width = 92
        ' 
        ' Column2
        ' 
        Column2.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Column2.HeaderText = "Product Name"
        Column2.Name = "Column2"
        Column2.ReadOnly = True
        ' 
        ' Column4
        ' 
        Column4.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column4.HeaderText = "Product Group"
        Column4.Name = "Column4"
        Column4.ReadOnly = True
        Column4.Width = 101
        ' 
        ' Column3
        ' 
        Column3.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column3.HeaderText = "Units Stock"
        Column3.Name = "Column3"
        Column3.ReadOnly = True
        Column3.Width = 84
        ' 
        ' Column6
        ' 
        Column6.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column6.HeaderText = "Available"
        Column6.Name = "Column6"
        Column6.ReadOnly = True
        Column6.Width = 61
        ' 
        ' Column5
        ' 
        Column5.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column5.HeaderText = "Price"
        Column5.Name = "Column5"
        Column5.ReadOnly = True
        Column5.Width = 58
        ' 
        ' Label6
        ' 
        Label6.AutoSize = True
        Label6.Location = New Point(40, 439)
        Label6.Name = "Label6"
        Label6.Size = New Size(42, 15)
        Label6.TabIndex = 17
        Label6.Text = "Search"
        ' 
        ' search
        ' 
        search.AcceptsReturn = True
        search.Location = New Point(88, 439)
        search.Name = "search"
        search.Size = New Size(206, 23)
        search.TabIndex = 16
        ' 
        ' PRICE
        ' 
        PRICE.Location = New Point(41, 292)
        PRICE.Name = "PRICE"
        PRICE.PlaceholderText = "0"
        PRICE.Size = New Size(206, 23)
        PRICE.TabIndex = 18
        ' 
        ' Label5
        ' 
        Label5.AutoSize = True
        Label5.Location = New Point(40, 274)
        Label5.Name = "Label5"
        Label5.Size = New Size(33, 15)
        Label5.TabIndex = 19
        Label5.Text = "Price"
        ' 
        ' COS_ID
        ' 
        COS_ID.Location = New Point(342, 90)
        COS_ID.Name = "COS_ID"
        COS_ID.Size = New Size(224, 23)
        COS_ID.TabIndex = 21
        ' 
        ' FULLNAME
        ' 
        FULLNAME.Location = New Point(342, 152)
        FULLNAME.Name = "FULLNAME"
        FULLNAME.Size = New Size(224, 23)
        FULLNAME.TabIndex = 22
        ' 
        ' ADDRESS
        ' 
        ADDRESS.Location = New Point(342, 211)
        ADDRESS.Name = "ADDRESS"
        ADDRESS.Size = New Size(224, 23)
        ADDRESS.TabIndex = 23
        ' 
        ' CONTACT
        ' 
        CONTACT.Location = New Point(342, 274)
        CONTACT.Name = "CONTACT"
        CONTACT.Size = New Size(224, 23)
        CONTACT.TabIndex = 24
        ' 
        ' BALANCE
        ' 
        BALANCE.Location = New Point(581, 271)
        BALANCE.Name = "BALANCE"
        BALANCE.Size = New Size(224, 23)
        BALANCE.TabIndex = 25
        ' 
        ' QTY
        ' 
        QTY.Location = New Point(581, 211)
        QTY.Name = "QTY"
        QTY.Size = New Size(224, 23)
        QTY.TabIndex = 26
        ' 
        ' DEPOSIT
        ' 
        DEPOSIT.Location = New Point(581, 90)
        DEPOSIT.Name = "DEPOSIT"
        DEPOSIT.Size = New Size(224, 23)
        DEPOSIT.TabIndex = 28
        ' 
        ' PORC_NAME
        ' 
        PORC_NAME.Location = New Point(581, 29)
        PORC_NAME.Name = "PORC_NAME"
        PORC_NAME.Size = New Size(224, 23)
        PORC_NAME.TabIndex = 29
        ' 
        ' Label7
        ' 
        Label7.AutoSize = True
        Label7.Location = New Point(342, 11)
        Label7.Name = "Label7"
        Label7.Size = New Size(68, 15)
        Label7.TabIndex = 30
        Label7.Text = "Product No"
        ' 
        ' Label8
        ' 
        Label8.AutoSize = True
        Label8.Location = New Point(342, 72)
        Label8.Name = "Label8"
        Label8.Size = New Size(73, 15)
        Label8.TabIndex = 31
        Label8.Text = "Costumer ID"
        ' 
        ' Label9
        ' 
        Label9.AutoSize = True
        Label9.Location = New Point(342, 136)
        Label9.Name = "Label9"
        Label9.Size = New Size(56, 15)
        Label9.TabIndex = 32
        Label9.Text = "Fullname"
        ' 
        ' Label10
        ' 
        Label10.AutoSize = True
        Label10.Location = New Point(342, 193)
        Label10.Name = "Label10"
        Label10.Size = New Size(49, 15)
        Label10.TabIndex = 33
        Label10.Text = "Address"
        ' 
        ' Label11
        ' 
        Label11.AutoSize = True
        Label11.Location = New Point(342, 256)
        Label11.Name = "Label11"
        Label11.Size = New Size(49, 15)
        Label11.TabIndex = 34
        Label11.Text = "Contact"
        ' 
        ' Label12
        ' 
        Label12.AutoSize = True
        Label12.Location = New Point(581, 256)
        Label12.Name = "Label12"
        Label12.Size = New Size(48, 15)
        Label12.TabIndex = 35
        Label12.Text = "Balance"
        ' 
        ' Label13
        ' 
        Label13.AutoSize = True
        Label13.Location = New Point(581, 193)
        Label13.Name = "Label13"
        Label13.Size = New Size(53, 15)
        Label13.TabIndex = 36
        Label13.Text = "Quantity"
        ' 
        ' Label14
        ' 
        Label14.AutoSize = True
        Label14.Location = New Point(581, 136)
        Label14.Name = "Label14"
        Label14.Size = New Size(89, 15)
        Label14.TabIndex = 37
        Label14.Text = "Date Purchased"
        ' 
        ' Label15
        ' 
        Label15.AutoSize = True
        Label15.Location = New Point(581, 72)
        Label15.Name = "Label15"
        Label15.Size = New Size(30, 15)
        Label15.TabIndex = 38
        Label15.Text = "Paid"
        ' 
        ' Label16
        ' 
        Label16.AutoSize = True
        Label16.Location = New Point(581, 11)
        Label16.Name = "Label16"
        Label16.Size = New Size(142, 15)
        Label16.TabIndex = 39
        Label16.Text = "Product Purchased Name"
        ' 
        ' PRO_ID_COMBO
        ' 
        PRO_ID_COMBO.FormattingEnabled = True
        PRO_ID_COMBO.Location = New Point(342, 29)
        PRO_ID_COMBO.Name = "PRO_ID_COMBO"
        PRO_ID_COMBO.Size = New Size(224, 23)
        PRO_ID_COMBO.TabIndex = 40
        ' 
        ' DATE_PUR
        ' 
        DATE_PUR.Location = New Point(581, 152)
        DATE_PUR.Name = "DATE_PUR"
        DATE_PUR.Size = New Size(224, 23)
        DATE_PUR.TabIndex = 41
        ' 
        ' purchased_list
        ' 
        purchased_list.AllowUserToAddRows = False
        purchased_list.AllowUserToDeleteRows = False
        purchased_list.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize
        purchased_list.Columns.AddRange(New DataGridViewColumn() {DataGridViewTextBoxColumn1, DataGridViewTextBoxColumn2, DataGridViewTextBoxColumn3, Column11, DataGridViewTextBoxColumn4, DataGridViewTextBoxColumn5, Column1, Column8, Column9, Column10})
        purchased_list.Location = New Point(821, 12)
        purchased_list.Name = "purchased_list"
        purchased_list.ReadOnly = True
        purchased_list.RowHeadersVisible = False
        purchased_list.SelectionMode = DataGridViewSelectionMode.FullRowSelect
        purchased_list.Size = New Size(747, 285)
        purchased_list.TabIndex = 42
        ' 
        ' DataGridViewTextBoxColumn1
        ' 
        DataGridViewTextBoxColumn1.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn1.HeaderText = "Poduct No."
        DataGridViewTextBoxColumn1.Name = "DataGridViewTextBoxColumn1"
        DataGridViewTextBoxColumn1.ReadOnly = True
        DataGridViewTextBoxColumn1.Width = 92
        ' 
        ' DataGridViewTextBoxColumn2
        ' 
        DataGridViewTextBoxColumn2.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn2.HeaderText = "Costumer ID"
        DataGridViewTextBoxColumn2.Name = "DataGridViewTextBoxColumn2"
        DataGridViewTextBoxColumn2.ReadOnly = True
        DataGridViewTextBoxColumn2.Width = 98
        ' 
        ' DataGridViewTextBoxColumn3
        ' 
        DataGridViewTextBoxColumn3.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn3.HeaderText = "Fullname"
        DataGridViewTextBoxColumn3.Name = "DataGridViewTextBoxColumn3"
        DataGridViewTextBoxColumn3.ReadOnly = True
        DataGridViewTextBoxColumn3.ToolTipText = "Address"
        DataGridViewTextBoxColumn3.Width = 81
        ' 
        ' Column11
        ' 
        Column11.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column11.HeaderText = "Address"
        Column11.Name = "Column11"
        Column11.ReadOnly = True
        Column11.Width = 74
        ' 
        ' DataGridViewTextBoxColumn4
        ' 
        DataGridViewTextBoxColumn4.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn4.HeaderText = "Contact #"
        DataGridViewTextBoxColumn4.Name = "DataGridViewTextBoxColumn4"
        DataGridViewTextBoxColumn4.ReadOnly = True
        DataGridViewTextBoxColumn4.Width = 84
        ' 
        ' DataGridViewTextBoxColumn5
        ' 
        DataGridViewTextBoxColumn5.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn5.HeaderText = "Product Name"
        DataGridViewTextBoxColumn5.Name = "DataGridViewTextBoxColumn5"
        DataGridViewTextBoxColumn5.ReadOnly = True
        DataGridViewTextBoxColumn5.Width = 109
        ' 
        ' Column1
        ' 
        Column1.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column1.HeaderText = "Deposit"
        Column1.Name = "Column1"
        Column1.ReadOnly = True
        Column1.Width = 72
        ' 
        ' Column8
        ' 
        Column8.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column8.HeaderText = "Date Purchased"
        Column8.Name = "Column8"
        Column8.ReadOnly = True
        Column8.Width = 114
        ' 
        ' Column9
        ' 
        Column9.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column9.HeaderText = "Qty"
        Column9.Name = "Column9"
        Column9.ReadOnly = True
        Column9.Width = 51
        ' 
        ' Column10
        ' 
        Column10.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column10.HeaderText = "Balance"
        Column10.Name = "Column10"
        Column10.ReadOnly = True
        Column10.Width = 73
        ' 
        ' SAVE_PURCHASE
        ' 
        SAVE_PURCHASE.Location = New Point(342, 312)
        SAVE_PURCHASE.Name = "SAVE_PURCHASE"
        SAVE_PURCHASE.Size = New Size(75, 23)
        SAVE_PURCHASE.TabIndex = 43
        SAVE_PURCHASE.Text = "Save Purchase"
        SAVE_PURCHASE.UseVisualStyleBackColor = True
        ' 
        ' update_by
        ' 
        update_by.Location = New Point(423, 312)
        update_by.Name = "update_by"
        update_by.Size = New Size(75, 23)
        update_by.TabIndex = 44
        update_by.Text = "Update"
        update_by.UseVisualStyleBackColor = True
        ' 
        ' delete_by
        ' 
        delete_by.Location = New Point(504, 312)
        delete_by.Name = "delete_by"
        delete_by.Size = New Size(75, 23)
        delete_by.TabIndex = 45
        delete_by.Text = "Delete"
        delete_by.UseVisualStyleBackColor = True
        ' 
        ' clr_by
        ' 
        clr_by.Location = New Point(585, 312)
        clr_by.Name = "clr_by"
        clr_by.Size = New Size(75, 23)
        clr_by.TabIndex = 46
        clr_by.Text = "Clear"
        clr_by.UseVisualStyleBackColor = True
        ' 
        ' PURCHASED_SEARCH
        ' 
        PURCHASED_SEARCH.AcceptsReturn = True
        PURCHASED_SEARCH.Location = New Point(729, 313)
        PURCHASED_SEARCH.Name = "PURCHASED_SEARCH"
        PURCHASED_SEARCH.Size = New Size(206, 23)
        PURCHASED_SEARCH.TabIndex = 47
        ' 
        ' Label17
        ' 
        Label17.AutoSize = True
        Label17.Location = New Point(681, 316)
        Label17.Name = "Label17"
        Label17.Size = New Size(42, 15)
        Label17.TabIndex = 48
        Label17.Text = "Search"
        ' 
        ' PRODUCT_NO
        ' 
        PRODUCT_NO.Location = New Point(555, 567)
        PRODUCT_NO.Name = "PRODUCT_NO"
        PRODUCT_NO.Size = New Size(224, 23)
        PRODUCT_NO.TabIndex = 49
        ' 
        ' COSTUMER_ID
        ' 
        COSTUMER_ID.Location = New Point(555, 611)
        COSTUMER_ID.Name = "COSTUMER_ID"
        COSTUMER_ID.Size = New Size(224, 23)
        COSTUMER_ID.TabIndex = 50
        ' 
        ' FULLNAME_COSTUMER
        ' 
        FULLNAME_COSTUMER.Location = New Point(557, 655)
        FULLNAME_COSTUMER.Name = "FULLNAME_COSTUMER"
        FULLNAME_COSTUMER.Size = New Size(224, 23)
        FULLNAME_COSTUMER.TabIndex = 51
        ' 
        ' DEPOSITed_from_costumer
        ' 
        DEPOSITed_from_costumer.Location = New Point(557, 699)
        DEPOSITed_from_costumer.Name = "DEPOSITed_from_costumer"
        DEPOSITed_from_costumer.Size = New Size(224, 23)
        DEPOSITed_from_costumer.TabIndex = 52
        ' 
        ' BALANCE_
        ' 
        BALANCE_.Location = New Point(557, 743)
        BALANCE_.Name = "BALANCE_"
        BALANCE_.Size = New Size(224, 23)
        BALANCE_.TabIndex = 54
        ' 
        ' Label18
        ' 
        Label18.AutoSize = True
        Label18.Location = New Point(557, 549)
        Label18.Name = "Label18"
        Label18.Size = New Size(68, 15)
        Label18.TabIndex = 56
        Label18.Text = "Product No"
        ' 
        ' Label19
        ' 
        Label19.AutoSize = True
        Label19.Location = New Point(555, 593)
        Label19.Name = "Label19"
        Label19.Size = New Size(73, 15)
        Label19.TabIndex = 57
        Label19.Text = "Costumer ID"
        ' 
        ' Label20
        ' 
        Label20.AutoSize = True
        Label20.Location = New Point(555, 637)
        Label20.Name = "Label20"
        Label20.Size = New Size(56, 15)
        Label20.TabIndex = 58
        Label20.Text = "Fullname"
        ' 
        ' Label21
        ' 
        Label21.AutoSize = True
        Label21.Location = New Point(557, 769)
        Label21.Name = "Label21"
        Label21.Size = New Size(31, 15)
        Label21.TabIndex = 59
        Label21.Text = "Date"
        Label21.UseMnemonic = False
        ' 
        ' Label22
        ' 
        Label22.AutoSize = True
        Label22.Location = New Point(557, 725)
        Label22.Name = "Label22"
        Label22.Size = New Size(48, 15)
        Label22.TabIndex = 60
        Label22.Text = "Balance"
        ' 
        ' Label24
        ' 
        Label24.AutoSize = True
        Label24.Location = New Point(557, 681)
        Label24.Name = "Label24"
        Label24.Size = New Size(47, 15)
        Label24.TabIndex = 62
        Label24.Text = "Deposit"
        ' 
        ' LIST_DEPOSITS_of_costumers
        ' 
        LIST_DEPOSITS_of_costumers.AllowUserToAddRows = False
        LIST_DEPOSITS_of_costumers.AllowUserToDeleteRows = False
        LIST_DEPOSITS_of_costumers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize
        LIST_DEPOSITS_of_costumers.Columns.AddRange(New DataGridViewColumn() {Column16, Column13, DataGridViewTextBoxColumn7, DataGridViewTextBoxColumn8, Column12, Column14, Column15})
        LIST_DEPOSITS_of_costumers.Location = New Point(821, 525)
        LIST_DEPOSITS_of_costumers.Name = "LIST_DEPOSITS_of_costumers"
        LIST_DEPOSITS_of_costumers.ReadOnly = True
        LIST_DEPOSITS_of_costumers.RowHeadersVisible = False
        LIST_DEPOSITS_of_costumers.SelectionMode = DataGridViewSelectionMode.FullRowSelect
        LIST_DEPOSITS_of_costumers.Size = New Size(747, 285)
        LIST_DEPOSITS_of_costumers.TabIndex = 63
        ' 
        ' Column16
        ' 
        Column16.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column16.HeaderText = "Number"
        Column16.Name = "Column16"
        Column16.ReadOnly = True
        Column16.Width = 76
        ' 
        ' Column13
        ' 
        Column13.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        Column13.HeaderText = "Product ID"
        Column13.Name = "Column13"
        Column13.ReadOnly = True
        Column13.Width = 88
        ' 
        ' DataGridViewTextBoxColumn7
        ' 
        DataGridViewTextBoxColumn7.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        DataGridViewTextBoxColumn7.HeaderText = "Costumer ID"
        DataGridViewTextBoxColumn7.Name = "DataGridViewTextBoxColumn7"
        DataGridViewTextBoxColumn7.ReadOnly = True
        ' 
        ' DataGridViewTextBoxColumn8
        ' 
        DataGridViewTextBoxColumn8.AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells
        DataGridViewTextBoxColumn8.HeaderText = "Fullname"
        DataGridViewTextBoxColumn8.Name = "DataGridViewTextBoxColumn8"
        DataGridViewTextBoxColumn8.ReadOnly = True
        DataGridViewTextBoxColumn8.ToolTipText = "Address"
        DataGridViewTextBoxColumn8.Width = 81
        ' 
        ' Column12
        ' 
        Column12.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Column12.HeaderText = "Deposit"
        Column12.Name = "Column12"
        Column12.ReadOnly = True
        ' 
        ' Column14
        ' 
        Column14.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Column14.HeaderText = "Balance"
        Column14.Name = "Column14"
        Column14.ReadOnly = True
        ' 
        ' Column15
        ' 
        Column15.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
        Column15.HeaderText = "Date"
        Column15.Name = "Column15"
        Column15.ReadOnly = True
        ' 
        ' SAVE_DEPOSIT
        ' 
        SAVE_DEPOSIT.Location = New Point(554, 523)
        SAVE_DEPOSIT.Name = "SAVE_DEPOSIT"
        SAVE_DEPOSIT.Size = New Size(75, 23)
        SAVE_DEPOSIT.TabIndex = 64
        SAVE_DEPOSIT.Text = "Save Purchase"
        SAVE_DEPOSIT.UseVisualStyleBackColor = True
        ' 
        ' DATE_DEPOSIT
        ' 
        DATE_DEPOSIT.Location = New Point(557, 787)
        DATE_DEPOSIT.Name = "DATE_DEPOSIT"
        DATE_DEPOSIT.Size = New Size(224, 23)
        DATE_DEPOSIT.TabIndex = 65
        ' 
        ' Button1
        ' 
        Button1.Location = New Point(635, 523)
        Button1.Name = "Button1"
        Button1.Size = New Size(75, 23)
        Button1.TabIndex = 66
        Button1.Text = "Delete"
        Button1.UseVisualStyleBackColor = True
        ' 
        ' Button2
        ' 
        Button2.Location = New Point(716, 523)
        Button2.Name = "Button2"
        Button2.Size = New Size(75, 23)
        Button2.TabIndex = 67
        Button2.Text = "Clear"
        Button2.UseVisualStyleBackColor = True
        ' 
        ' hiddenid
        ' 
        hiddenid.Enabled = False
        hiddenid.Location = New Point(554, 494)
        hiddenid.Name = "hiddenid"
        hiddenid.ReadOnly = True
        hiddenid.Size = New Size(100, 23)
        hiddenid.TabIndex = 68
        hiddenid.Visible = False
        ' 
        ' Label23
        ' 
        Label23.AutoSize = True
        Label23.Location = New Point(821, 497)
        Label23.Name = "Label23"
        Label23.Size = New Size(42, 15)
        Label23.TabIndex = 69
        Label23.Text = "Search"
        ' 
        ' search_costumer_balance
        ' 
        search_costumer_balance.AcceptsReturn = True
        search_costumer_balance.Location = New Point(869, 494)
        search_costumer_balance.Name = "search_costumer_balance"
        search_costumer_balance.Size = New Size(206, 23)
        search_costumer_balance.TabIndex = 70
        ' 
        ' Form1
        ' 
        AutoScaleDimensions = New SizeF(7F, 15F)
        AutoScaleMode = AutoScaleMode.Font
        ClientSize = New Size(1580, 822)
        Controls.Add(search_costumer_balance)
        Controls.Add(Label23)
        Controls.Add(hiddenid)
        Controls.Add(Button2)
        Controls.Add(Button1)
        Controls.Add(DATE_DEPOSIT)
        Controls.Add(SAVE_DEPOSIT)
        Controls.Add(LIST_DEPOSITS_of_costumers)
        Controls.Add(Label24)
        Controls.Add(Label22)
        Controls.Add(Label21)
        Controls.Add(Label20)
        Controls.Add(Label19)
        Controls.Add(Label18)
        Controls.Add(BALANCE_)
        Controls.Add(DEPOSITed_from_costumer)
        Controls.Add(FULLNAME_COSTUMER)
        Controls.Add(COSTUMER_ID)
        Controls.Add(PRODUCT_NO)
        Controls.Add(Label17)
        Controls.Add(PURCHASED_SEARCH)
        Controls.Add(clr_by)
        Controls.Add(delete_by)
        Controls.Add(update_by)
        Controls.Add(SAVE_PURCHASE)
        Controls.Add(purchased_list)
        Controls.Add(DATE_PUR)
        Controls.Add(PRO_ID_COMBO)
        Controls.Add(Label16)
        Controls.Add(Label15)
        Controls.Add(Label14)
        Controls.Add(Label13)
        Controls.Add(Label12)
        Controls.Add(Label11)
        Controls.Add(Label10)
        Controls.Add(Label9)
        Controls.Add(Label8)
        Controls.Add(Label7)
        Controls.Add(PORC_NAME)
        Controls.Add(DEPOSIT)
        Controls.Add(QTY)
        Controls.Add(BALANCE)
        Controls.Add(CONTACT)
        Controls.Add(ADDRESS)
        Controls.Add(FULLNAME)
        Controls.Add(COS_ID)
        Controls.Add(Label5)
        Controls.Add(PRICE)
        Controls.Add(Label6)
        Controls.Add(search)
        Controls.Add(DataGridView1)
        Controls.Add(Label4)
        Controls.Add(Label3)
        Controls.Add(Label2)
        Controls.Add(Label1)
        Controls.Add(clear)
        Controls.Add(delete)
        Controls.Add(update)
        Controls.Add(btn_save)
        Controls.Add(stat)
        Controls.Add(pro_grp)
        Controls.Add(UNITS)
        Controls.Add(proname)
        Controls.Add(prono)
        Name = "Form1"
        Text = "Form1"
        CType(DataGridView1, ComponentModel.ISupportInitialize).EndInit()
        CType(purchased_list, ComponentModel.ISupportInitialize).EndInit()
        CType(LIST_DEPOSITS_of_costumers, ComponentModel.ISupportInitialize).EndInit()
        ResumeLayout(False)
        PerformLayout()
    End Sub

    Friend WithEvents prono As TextBox
    Friend WithEvents proname As TextBox
    Friend WithEvents UNITS As TextBox
    Friend WithEvents pro_grp As ComboBox
    Friend WithEvents stat As CheckBox
    Friend WithEvents btn_save As Button
    Friend WithEvents update As Button
    Friend WithEvents delete As Button
    Friend WithEvents clear As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents DataGridView1 As DataGridView
    Friend WithEvents Label6 As Label
    Friend WithEvents search As TextBox
    Friend WithEvents PRICE As TextBox
    Friend WithEvents Label5 As Label
    Friend WithEvents COS_ID As TextBox
    Friend WithEvents FULLNAME As TextBox
    Friend WithEvents ADDRESS As TextBox
    Friend WithEvents CONTACT As TextBox
    Friend WithEvents BALANCE As TextBox
    Friend WithEvents QTY As TextBox
    Friend WithEvents DEPOSIT As TextBox
    Friend WithEvents PORC_NAME As TextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents Label14 As Label
    Friend WithEvents Label15 As Label
    Friend WithEvents Label16 As Label
    Friend WithEvents PRO_ID_COMBO As ComboBox
    Friend WithEvents DATE_PUR As DateTimePicker
    Friend WithEvents purchased_list As DataGridView
    Friend WithEvents SAVE_PURCHASE As Button
    Friend WithEvents update_by As Button
    Friend WithEvents delete_by As Button
    Friend WithEvents clr_by As Button
    Friend WithEvents DataGridViewTextBoxColumn1 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn2 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn3 As DataGridViewTextBoxColumn
    Friend WithEvents Column11 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn4 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn5 As DataGridViewTextBoxColumn
    Friend WithEvents Column1 As DataGridViewTextBoxColumn
    Friend WithEvents Column8 As DataGridViewTextBoxColumn
    Friend WithEvents Column9 As DataGridViewTextBoxColumn
    Friend WithEvents Column10 As DataGridViewTextBoxColumn
    Friend WithEvents Column7 As DataGridViewTextBoxColumn
    Friend WithEvents Column2 As DataGridViewTextBoxColumn
    Friend WithEvents Column4 As DataGridViewTextBoxColumn
    Friend WithEvents Column3 As DataGridViewTextBoxColumn
    Friend WithEvents Column6 As DataGridViewCheckBoxColumn
    Friend WithEvents Column5 As DataGridViewTextBoxColumn
    Friend WithEvents PURCHASED_SEARCH As TextBox
    Friend WithEvents Label17 As Label
    Friend WithEvents PRODUCT_NO As TextBox
    Friend WithEvents COSTUMER_ID As TextBox
    Friend WithEvents FULLNAME_COSTUMER As TextBox
    Friend WithEvents DEPOSITed_from_costumer As TextBox
    Friend WithEvents BALANCE_ As TextBox
    Friend WithEvents Label18 As Label
    Friend WithEvents Label19 As Label
    Friend WithEvents Label20 As Label
    Friend WithEvents Label21 As Label
    Friend WithEvents Label22 As Label
    Friend WithEvents Label24 As Label
    Friend WithEvents LIST_DEPOSITS_of_costumers As DataGridView
    Friend WithEvents SAVE_DEPOSIT As Button
    Friend WithEvents DATE_DEPOSIT As DateTimePicker
    Friend WithEvents Button1 As Button
    Friend WithEvents Button2 As Button
    Friend WithEvents Column16 As DataGridViewTextBoxColumn
    Friend WithEvents Column13 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn7 As DataGridViewTextBoxColumn
    Friend WithEvents DataGridViewTextBoxColumn8 As DataGridViewTextBoxColumn
    Friend WithEvents Column12 As DataGridViewTextBoxColumn
    Friend WithEvents Column14 As DataGridViewTextBoxColumn
    Friend WithEvents Column15 As DataGridViewTextBoxColumn
    Friend WithEvents hiddenid As TextBox
    Friend WithEvents Label23 As Label
    Friend WithEvents search_costumer_balance As TextBox

End Class
