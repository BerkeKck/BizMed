inherited frmbyzMCDiabetesNurseForm: TfrmbyzMCDiabetesNurseForm
  Caption = 'Diyabet Hem'#351'iresi Takip Formu'
  ClientHeight = 671
  ClientWidth = 861
  ExplicitWidth = 877
  ExplicitHeight = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 861
    ExplicitTop = 79
    ExplicitWidth = 861
    inherited btnBaseClose: TcxButton
      Left = 782
      ExplicitLeft = 782
    end
  end
  inherited pnlMain: TPanel
    Width = 861
    Height = 559
    ExplicitWidth = 861
    ExplicitHeight = 559
    object vgDiabetesForm: TPanel
      Left = 8
      Top = 2
      Width = 849
      Height = 543
      Caption = 'vgDiabetesNurseForm'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 861
    Width = 861
    inherited pnlGenLeft: TPanel
      inherited pnlPatientDetail: TPanel
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
    Left = 680
    Top = 136
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'SELECT DNF.* FROM MC_DIABETES_NURSE_FORM DNF WHERE DNF.COM_ID = ' +
        ':COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    Left = 608
    Top = 208
  end
  inherited DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 624
    Top = 280
  end
  inherited OracleDataSet1Det: TOracleDataSet
    Left = 736
    Top = 200
  end
  inherited DataSource2: TDataSource
    Left = 736
    Top = 272
  end
end
