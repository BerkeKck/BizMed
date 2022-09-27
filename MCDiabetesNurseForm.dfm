inherited frmMCDiabetesNurseForm: TfrmMCDiabetesNurseForm
  Caption = 'Diyabet Hem'#351'iresi Takip Formu'
  ClientHeight = 803
  ClientWidth = 727
  Position = poDesktopCenter
  ExplicitWidth = 743
  ExplicitHeight = 842
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 727
    ExplicitWidth = 727
    inherited btnBaseClose: TcxButton
      Left = 648
      ExplicitLeft = 648
    end
  end
  inherited pnlMain: TPanel
    Width = 727
    Height = 691
    ExplicitWidth = 727
    ExplicitHeight = 691
    object pnlBottom: TPanel
      Left = 0
      Top = 0
      Width = 727
      Height = 691
      Align = alClient
      Caption = 'vgDiabetesNurseForm'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object vgDiabetesNurseForm: TcxDBVerticalGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 719
        Height = 683
        Align = alClient
        FindPanel.DisplayMode = fpdmManual
        LayoutStyle = lsMultiRecordView
        OptionsView.CellEndEllipsis = True
        OptionsView.RowHeaderWidth = 354
        OptionsView.RowHeight = 18
        OptionsView.ValueWidth = 153
        OptionsView.MultiRecordEvenOddContentStyle = mrcsByRecord
        OptionsBehavior.RowFiltering = bTrue
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        Navigator.Buttons.CustomButtons = <>
        Styles.Selection = dmGeneral.styGridBandHeader
        Styles.Header = dmGeneral.cxStyle1
        TabOrder = 0
        DataController.DataSource = DataSource2
        ExplicitLeft = 8
        ExplicitTop = 6
        Version = 1
        object vgDiabetesNurseFormCDATE: TcxDBEditorRow
          Properties.Caption = 'Tarih'
          Properties.DataBinding.FieldName = 'PROCESS_TIME'
          Properties.Options.Editing = False
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vgDiabetesNurseFormCTime: TcxDBEditorRow
          Properties.Caption = 'Saat'
          Properties.DataBinding.FieldName = 'PROCESS_TIME'
          Properties.Options.Editing = False
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vgDiabetesNurseFormCUSER: TcxDBEditorRow
          Properties.Caption = 'Hem'#351'ire'
          Properties.DataBinding.FieldName = 'NURSE_NAME'
          Properties.Options.Editing = False
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vgDiabetesNurseFormPATIENCE_INFO: TcxCategoryRow
          Properties.Caption = 'HASTA B'#304'LG'#304'LER'#304
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object vgDiabetesNurseFormHEIGHT: TcxDBEditorRow
          Properties.Caption = 'Boy'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.FieldName = 'HEIGH'
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object vgDiabetesNurseFormWEIGHT: TcxDBEditorRow
          Properties.Caption = 'Kilo'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.FieldName = 'WEIGHT'
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object vgDiabetesNurseFormWAIST: TcxDBEditorRow
          Properties.Caption = 'Bel '#199'evresi'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.FieldName = 'WAIST'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object vgDiabetesNurseFormBKI: TcxDBEditorRow
          Properties.Caption = 'BKI (Beden K'#252'tle Indexi)'
          Properties.EditPropertiesClassName = 'TcxTextEditProperties'
          Properties.DataBinding.FieldName = 'BKI'
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object vgDiabetesNurseFormDM_TYPE: TcxDBEditorRow
          Properties.Caption = 'DM Tipi (Diabetes Mellitus)'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'DM_TYPE'
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
        object vgDiabetesNurseFormADP_TO_IILLNESS: TcxCategoryRow
          Properties.Caption = 'HASTALIK '#304'LE UYUM'
          ID = 9
          ParentID = -1
          Index = 9
          Version = 1
        end
        object vgDiabetesNurseFormREG_BL_SUG_MEAS: TcxDBEditorRow
          Properties.Caption = 'D'#252'zenli kan '#351'eker '#246'l'#231#252'm'#252
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'REG_BL_SUG_MEAS'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 10
          ParentID = -1
          Index = 10
          Version = 1
        end
        object vgDiabetesNurseFormDIET_COMP: TcxDBEditorRow
          Properties.Caption = 'Diyet uyumu'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'DIET_COMP'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 11
          ParentID = -1
          Index = 11
          Version = 1
        end
        object vgDiabetesNurseFormTREAT_COMP: TcxDBEditorRow
          Properties.Caption = 'Tedavi uyumu'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'TREAT_COMP'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 12
          ParentID = -1
          Index = 12
          Version = 1
        end
        object vgDiabetesNurseFormHIPO_ATT: TcxDBMultiEditorRow
          Options.ShowInCustomizationForm = False
          Properties.Editors = <
            item
              Caption = 'Hipoglisemik atak'
              EditPropertiesClassName = 'TcxCheckBoxProperties'
              EditProperties.NullStyle = nssUnchecked
              DataBinding.FieldName = 'HIPOGLI_ATT'
            end
            item
              Caption = ' Hiperglisemik atak '
              EditPropertiesClassName = 'TcxCheckBoxProperties'
              EditProperties.NullStyle = nssUnchecked
              DataBinding.FieldName = 'HIPERGLI_ATT'
            end>
          Properties.SeparatorAlignmentVert = vaBottom
          ID = 13
          ParentID = -1
          Index = 13
          Version = 1
        end
        object vgDiabetesNurseFormOAD_OR_INS: TcxDBMultiEditorRow
          Options.ShowInCustomizationForm = False
          Properties.Editors = <
            item
              Caption = 'OAD Kullan'#305'm'#305
              EditPropertiesClassName = 'TcxCheckBoxProperties'
              EditProperties.NullStyle = nssUnchecked
              DataBinding.FieldName = 'OAD_USEA'
            end
            item
              Caption = 'Ins'#252'lin kullan'#305'm'#305
              EditPropertiesClassName = 'TcxCheckBoxProperties'
              EditProperties.NullStyle = nssUnchecked
              DataBinding.FieldName = 'INS_USEA'
            end>
          Properties.SeparatorAlignmentVert = vaBottom
          ID = 14
          ParentID = -1
          Index = 14
          Version = 1
        end
        object vgDiabetesNurseFormPATIENCE_EXAM: TcxCategoryRow
          Properties.Caption = 'HASTA MUAYENES'#304
          ID = 15
          ParentID = -1
          Index = 15
          Version = 1
        end
        object vgDiabetesNurseFormEDEMA: TcxDBEditorRow
          Properties.Caption = #214'dem'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'EDEMA'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 16
          ParentID = -1
          Index = 16
          Version = 1
        end
        object vgDiabetesNurseFormINJ_SITE_CONT: TcxDBEditorRow
          Properties.Caption = #304'ns'#252'lin Enjeksiyon B'#246'lge Kontrol'#252
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'INJ_SITE_CONT'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 17
          ParentID = -1
          Index = 17
          Version = 1
        end
        object vgDiabetesNurseFormWOUND_CONT: TcxDBEditorRow
          Properties.Caption = 'Yara Kontrol'#252
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'WOUND_CONT'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 18
          ParentID = -1
          Index = 18
          Version = 1
        end
        object vgDiabetesNurseFormFOOT_EX: TcxDBEditorRow
          Properties.Caption = 'Ayak Muayenesi '
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'FOOT_EX'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 19
          ParentID = -1
          Index = 19
          Version = 1
        end
        object vgDiabetesNurseFormPARALYSIS: TcxDBEditorRow
          Properties.Caption = 'Paralizi'
          Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.EditProperties.Items = <>
          Properties.DataBinding.FieldName = 'PARALYSIS'
          Properties.Options.ShowEditButtons = eisbAlways
          ID = 20
          ParentID = -1
          Index = 20
          Version = 1
        end
        object vgDiabetesNurseFormED_REQ: TcxCategoryRow
          Properties.Caption = 'E'#286#304'T'#304'M GEREKS'#304'N'#304'MLER'#304' '
          ID = 21
          ParentID = -1
          Index = 21
          Version = 1
        end
        object vgDiabetesNurseFormBL_SUG_MEAS: TcxDBEditorRow
          Properties.Caption = 'D'#252'zenli Kan '#350'eker '#214'l'#231#252'm'#252
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'BL_SUG_MEAS'
          Properties.Options.Editing = False
          ID = 22
          ParentID = -1
          Index = 22
          Version = 1
        end
        object vgDiabetesNurseFormDAI_BL_SUG_MON_BOOK: TcxDBEditorRow
          Properties.Caption = 'G'#252'nl'#252'k Kan '#350'ekeri Takip Kitap'#231#305#287#305
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'DAI_BL_SUG_MON_BOOK'
          ID = 23
          ParentID = -1
          Index = 23
          Version = 1
        end
        object vgDiabetesNurseFormINS_STR_COND: TcxDBEditorRow
          Properties.Caption = #304'ns'#252'lin Saklama Ko'#351'ullar'#305' '
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'INS_STR_COND'
          ID = 24
          ParentID = -1
          Index = 24
          Version = 1
        end
        object vgDiabetesNurseFormINS_PEN_USE: TcxDBEditorRow
          Properties.Caption = #304'ns'#252'lin Kalem Kullan'#305'm'#305' / Uygulama B'#246'lgeleri '
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'INS_PEN_USE'
          ID = 25
          ParentID = -1
          Index = 25
          Version = 1
        end
        object vgDiabetesNurseFormGLI_ED: TcxDBEditorRow
          Properties.Caption = 'Hipoglisemi/Hiperglisemi e'#287'itimi '
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'GLI_ED'
          ID = 26
          ParentID = -1
          Index = 26
          Version = 1
        end
        object vgDiabetesNurseFormSNAC_INFO: TcxDBEditorRow
          Properties.Caption = 'Ara '#246#287#252'n bilgilendirmesi'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'SNAC_INFO'
          ID = 27
          ParentID = -1
          Index = 27
          Version = 1
        end
        object vgDiabetesNurseFormINS_SIDE_EFF: TcxDBEditorRow
          Properties.Caption = #304'ns'#252'lin yan etkileri (hiperatrofi/hipoatrofi)'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'INS_SIDE_EFF'
          ID = 28
          ParentID = -1
          Index = 28
          Version = 1
        end
        object vgDiabetesNurseFormANN_INS_NOTIF: TcxDBEditorRow
          Properties.Caption = 'Y'#305'll'#305'k muayene bilgilendirmesi'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'ANN_INS_NOTIF'
          ID = 29
          ParentID = -1
          Index = 29
          Version = 1
        end
        object vgDiabetesNurseFormDIA_FOOT_INFO: TcxDBEditorRow
          Properties.Caption = 'Diyabetik ayak bilgilendirmesi'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'DIA_FOOT_INFO'
          ID = 30
          ParentID = -1
          Index = 30
          Version = 1
        end
        object vgDiabetesNurseFormGPL_1: TcxDBEditorRow
          Properties.Caption = 'GLP-1 kullan'#305'm'#305'/uygulama b'#246'lgesi / komplikasonlar'#305
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'GPL-1'
          ID = 31
          ParentID = -1
          Index = 31
          Version = 1
        end
        object vgDiabetesNurseFormPERIN_HYG_TRA: TcxDBEditorRow
          Properties.Caption = 'Perine Hijyen E'#287'itimi'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'PERIN_HYG_TRA'
          ID = 32
          ParentID = -1
          Index = 32
          Version = 1
        end
        object vgDiabetesNurseFormAPP: TcxDBEditorRow
          Properties.Caption = 'Uygulama'
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.DataBinding.FieldName = 'APP'
          ID = 33
          ParentID = -1
          Index = 33
          Version = 1
        end
        object vgDiabetesNurseFormNURSE_NOTE: TcxDBEditorRow
          Properties.Caption = 'Hem'#351'ire Notu'
          Properties.DataBinding.FieldName = 'NURSE_NOTE'
          ID = 34
          ParentID = -1
          Index = 34
          Version = 1
        end
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 727
    Width = 727
    inherited pnlDiag: TPanel
      ExplicitLeft = 565
      ExplicitTop = 4
      ExplicitHeight = 69
      inherited mmDiag: TcxMemo
        ExplicitHeight = 54
      end
    end
    inherited pnlGenLeft: TPanel
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 69
      inherited pnlPatientDetail: TPanel
        ExplicitTop = 32
        inherited Panel7: TPanel
          inherited cxLabel6: TcxLabel
            AnchorY = 8
          end
          inherited lblDoctor: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel8: TPanel
          inherited lblAssCaption: TcxLabel
            AnchorY = 8
          end
          inherited lblAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited pnlIsPregnant: TPanel
          inherited cxLabel7: TcxLabel
            AnchorY = 8
          end
        end
        inherited Panel17: TPanel
          inherited cxLabel12: TcxLabel
            AnchorY = 8
          end
          inherited lblSecAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel1: TPanel
          inherited lblLength: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel2: TPanel
          inherited lblWeight: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel3: TPanel
          inherited cxLabel13: TcxLabel
            AnchorY = 8
          end
          inherited teUPN: TcxTextEdit
            ExplicitHeight = 20
          end
        end
      end
      inherited pnlPatientInfo: TPanel
        inherited lblPatName: TcxLabel
          AnchorX = 124
          AnchorY = 18
        end
        inherited pnlProt: TPanel
          inherited cxLabel1: TcxLabel
            AnchorY = 8
          end
          inherited teProt: TcxTextEdit
            ExplicitHeight = 20
          end
        end
        inherited pnlPatInfoAge: TPanel
          inherited lblAge: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoBirthDate: TPanel
          inherited lblBirth: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoSexuality: TPanel
          inherited lblGender: TcxLabel
            AnchorY = 35
          end
        end
      end
    end
  end
  inherited AppEvntsBase: TApplicationEvents
    Left = 600
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT DNF.*, DNF.ROWID'
      '  FROM MC_DIABETES_NURSE_FORM DNF'
      ' WHERE DNF.COM_ID = :COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_DIABETES_NURSE_FORM_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 536
    Top = 208
  end
  inherited DataSource1: TDataSource
    Left = 536
    Top = 272
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT DNF.*, DNF.ROWID,'
      '  SUBSTR(GET_USER_NAME(DNF.NURSE_ID), 1, 50) AS NURSE_NAME'
      '   FROM MC_DIABETES_NURSE_FORM_DET DNF'
      ' WHERE DNF.DNF_ID = :DNF_ID'
      ' ORDER BY DNF.CTIME DESC')
    Variables.Data = {
      04000000010000000E0000003A0044004E0046005F0049004400050000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_DIABETES_NURSE_FORM_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'DNF_ID'
    AfterPost = OracleDataSet1DetAfterPost
    Left = 624
    Top = 208
  end
  inherited DataSource2: TDataSource
    Left = 624
    Top = 272
  end
end
