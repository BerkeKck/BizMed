unit MCDiabetesNurseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, CommonConf, DtMdMedCard, Oracle;

type
  TfrmbyzMCDiabetesNurseForm = class(TfrmbyzMCBase)




  procedure FormCreate(Sender: TObject); override;
  procedure btnBaseAddClick(Sender: TObject);override;
  procedure btnBaseSaveClick(Sender: TObject);override;
  procedure btnBaseDeleteClick(Sender: TObject); override;
  procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
     lgvDiabType: String;
    lgvOracleDataSet1: TOracleDataSet;
  public
    { Public declarations }
     procedure ArrangeMCDiabetesNurseForm(pOraDataset:TOracleDataset);
  end;

var
  frmbyzMCDiabetesNurseForm: TfrmbyzMCDiabetesNurseForm;


implementation

{$R *.dfm}
        { TfrmbyzMCDiabetesNurseForm }
     //BK
procedure TfrmbyzMCDiabetesNurseForm.DataSource1DataChange(pOraDataset: TOracleDataset);
begin
   if pOraDataset = nil then
  begin
    OracleDataSet1.SetVariable('COM_ID',FBPatientInfo.BConOfMedId);
    OracleDataSet1.Open;
    if OracleDataSet1.isempty then
    begin
      OracleDataSet1.insert;
      OracleDataSet1.fieldByName('COM_ID').ASINTEGER := FBPatientInfo.BConOfMedId;
      OracleDataSet1.POST;
    end;
  end
    else//byzmedcarddan cagrildiysa
    begin
    BorderStyle := bsNone;
    Align := alClient;
    BorderWidth := 10;


    lgvOracleDataSet1 := pOraDataset;
    gbBaseTop.visible := false;
    pnlBaseBottom.visible := false;
    OracleDataSet1Det.Readonly := true;
    OracleDataSet1Det.Master := lgvOracleDataSet1;
    end;
    if OracleDataSet1Det.SQL.TExt <> '' then
    OracleDataSet1Det.Open;
end
end.
