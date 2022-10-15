unit MCDiabetesNurseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, CommonConf, DtMdMedCard, Oracle,
  cxStyles, cxInplaceContainer, cxVGrid, cxDBVGrid, cxCalc, cxCheckBox,
  cxTimeEdit, cxCheckGroup, cxImageComboBox, cxCalendar, cxSpinEdit;

type
  TfrmMCDiabetesNurseForm = class(TfrmbyzMCBase)
    vgDiabetesNurseForm: TcxDBVerticalGrid;
    vgDiabetesNurseFormCDATE: TcxDBEditorRow;
    vgDiabetesNurseFormCTime: TcxDBEditorRow;
    vgDiabetesNurseFormCUSER: TcxDBEditorRow;
    vgDiabetesNurseFormPATIENCE_INFO: TcxCategoryRow;
    vgDiabetesNurseFormHEIGHT: TcxDBEditorRow;
    vgDiabetesNurseFormWEIGHT: TcxDBEditorRow;
    vgDiabetesNurseFormWAIST: TcxDBEditorRow;
    vgDiabetesNurseFormBKI: TcxDBEditorRow;
    vgDiabetesNurseFormDM_TYPE: TcxDBEditorRow;
    vgDiabetesNurseFormADP_TO_IILLNESS: TcxCategoryRow;
    vgDiabetesNurseFormREG_BL_SUG_MEAS: TcxDBEditorRow;
    vgDiabetesNurseFormDIET_COMP: TcxDBEditorRow;
    vgDiabetesNurseFormTREAT_COMP: TcxDBEditorRow;
    vgDiabetesNurseFormHIPO_ATT: TcxDBMultiEditorRow;
    vgDiabetesNurseFormOAD_OR_INS: TcxDBMultiEditorRow;
    vgDiabetesNurseFormPATIENCE_EXAM: TcxCategoryRow;
    vgDiabetesNurseFormEDEMA: TcxDBEditorRow;
    vgDiabetesNurseFormINJ_SITE_CONT: TcxDBEditorRow;
    vgDiabetesNurseFormWOUND_CONT: TcxDBEditorRow;
    vgDiabetesNurseFormFOOT_EX: TcxDBEditorRow;
    vgDiabetesNurseFormPARALYSIS: TcxDBEditorRow;
    vgDiabetesNurseFormED_REQ: TcxCategoryRow;
    vgDiabetesNurseFormBL_SUG_MEAS: TcxDBEditorRow;
    vgDiabetesNurseFormDAI_BL_SUG_MON_BOOK: TcxDBEditorRow;
    vgDiabetesNurseFormINS_STR_COND: TcxDBEditorRow;
    vgDiabetesNurseFormINS_PEN_USE: TcxDBEditorRow;
    vgDiabetesNurseFormGLI_ED: TcxDBEditorRow;
    vgDiabetesNurseFormSNAC_INFO: TcxDBEditorRow;
    vgDiabetesNurseFormINS_SIDE_EFF: TcxDBEditorRow;
    vgDiabetesNurseFormANN_INS_NOTIF: TcxDBEditorRow;
    vgDiabetesNurseFormDIA_FOOT_INFO: TcxDBEditorRow;
    vgDiabetesNurseFormGPL_1: TcxDBEditorRow;
    vgDiabetesNurseFormPERIN_HYG_TRA: TcxDBEditorRow;
    vgDiabetesNurseFormAPP: TcxDBEditorRow;
    vgDiabetesNurseFormNURSE_NOTE: TcxDBEditorRow;

  procedure FormCreate(Sender: TObject); override;
  procedure btnBaseAddClick(Sender: TObject);override;
  procedure btnBaseSaveClick(Sender: TObject);override;
  procedure btnBaseDeleteClick(Sender: TObject); override;
  procedure vgDiabetesNurseFormFocusedRecordChanged(Sender: TcxVirtualVerticalGrid; APrevFocusedRecord, AFocusedRecord: Integer);
//  procedure DataSource1DataChange(Sender: TObject; Field: TField);
//  procedure cxDateEdit1PropertiesChange(Sender: TObject);
//  procedure cxCheckGroup1PropertiesChange(Sender: TObject);
//  procedure Button1Click(Sender: TObject);
//   procedure OracleDataSet1DetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }

    lgvOracleDataSet1: TOracleDataSet;
    lgvMICRDS: Integer;
    procedure SetRepositoryItems;
  public
    { Public declarations }
    procedure ArrangeDiabetesNurseForm(pOraDataset:TOracleDataset);
  end;

var
  frmMCDiabetesNurseForm: TfrmMCDiabetesNurseForm;


implementation
uses PatientList;
{$R *.dfm}

{ TfrmbyzMCDiabetesNurseForm }
//BK

//com_id
procedure TfrmMCDiabetesNurseForm.ArrangeDiabetesNurseForm (pOraDataset: TOracleDataset);
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
  else
  begin
   //byzmedcarddan cagrildiysa
    lgvFrmOpenFromMedCard := True;

    lgvOracleDataSet1 := pOraDataset;
    gbBaseTop.visible := false;
    pnlBaseBottom.visible := false;
    OracleDataSet1Det.Readonly := true;
    OracleDataSet1Det.Master := lgvOracleDataSet1;
  end;

  if OracleDataSet1Det.SQL.TExt <> '' then
     OracleDataSet1Det.Open;

  vgDiabetesNurseForm.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
  OracleDataSet1Det.ReadOnly := Not (OracleDataSet1Det.RecordCount > 0) or (lgvOracleDataSet1 <> Nil);
	SetRepositoryItems;
end;
// add-save-delete-form create
procedure TfrmMCDiabetesNurseForm.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
    Exit;

  vgDiabetesNurseForm.OnFocusedRecordChanged := Nil;
  try
    OracleDataSet1Det.ReadOnly := false;
    OracleDataSet1Det.Insert;
    OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
    OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
    OracleDataSet1Det.FieldByName('PROCESS_TIME').AsDateTime := Now;
    OracleDataSet1Det.FieldByName('NURSE_ID').AsInteger := UserId;
    OracleDataSet1Det.Post;
    OracleDataSet1Det.Refresh;
  finally
    vgDiabetesNurseForm.OnFocusedRecordChanged := vgDiabetesNurseFormFocusedRecordChanged;
  end;

end;

procedure TfrmMCDiabetesNurseForm.btnBaseSaveClick(Sender: TObject);
begin
   if (OracleDataSet1Det.ReadOnly) or (OracleDataSet1Det.RecordCount=0) then
    Exit;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
    //
end;

procedure TfrmMCDiabetesNurseForm.btnBaseDeleteClick(Sender: TObject);
begin
  if (lgvOracleDataSet1 <> nil) then
    Exit;
  if OracleDataSet1Det.RecordCount=0 then
    Exit;
  if Not(OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom('') then
    	OracleDataSet1Det.Delete
    else
    	Exit;
  end;
end;

procedure TfrmMCDiabetesNurseForm.FormCreate(Sender: TObject);
begin
  inherited;
  btnBaseClose.Visible := true;
  btnBaseSave.Visible := true;
  btnBasePrint.Visible := true;
  btnBaseDelete.Visible := true;

end;

procedure TfrmMCDiabetesNurseForm.vgDiabetesNurseFormFocusedRecordChanged(Sender: TcxVirtualVerticalGrid; APrevFocusedRecord,
  AFocusedRecord: Integer);
begin
	OracleDataSet1Det.ReadOnly := Not ((OracleDataSet1Det.Active) and (OracleDataSet1Det.RecordCount > 0));
end;

procedure TfrmMCDiabetesNurseForm.SetRepositoryItems;
begin
  vgDiabetesNurseFormREG_BL_SUG_MEAS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriREG_BL_SUG_MEAS_MCDiabetesNurseForm',678, True);
  vgDiabetesNurseFormDIET_COMP.Properties.RepositoryItem       := dmMedCard.CreateImgCmbBox('eriDIET_COMP_MCDiabetesNurseForm', 679, True);
  vgDiabetesNurseFormTREAT_COMP.Properties.RepositoryItem      := dmMedCard.CreateImgCmbBox('eriTREAT_COMP_MMCDiabetesNurseForm', 680, True);
  vgDiabetesNurseFormEDEMA.Properties.RepositoryItem           := dmMedCard.CreateImgCmbBox('eriEDEMA_MCDiabetesNurseForm', 681, True);
  vgDiabetesNurseFormINJ_SITE_CONT.Properties.RepositoryItem   := dmMedCard.CreateImgCmbBox('eriINJ_SITE_CONT_MCMCDiabetesNurseForm', 682, True);
  vgDiabetesNurseFormFOOT_EX.Properties.RepositoryItem         := dmMedCard.CreateImgCmbBox('eriFOOT_EX_MCDiabetesNurseForm', 683, True);
  vgDiabetesNurseFormPARALYSIS.Properties.RepositoryItem       := dmMedCard.CreateImgCmbBox('eriPARALYSIS_MCDiabetesNurseForm', 684, True);
  vgDiabetesNurseFormWOUND_CONT.Properties.RepositoryItem      := dmMedCard.CreateImgCmbBox('eriWOUND_CONT_MCDiabetesNurseForm', 685, true);
  vgDiabetesNurseFormDM_TYPE.Properties.RepositoryItem         := dmMedCard.CreateImgCmbBox('eriDM_TYPE_MCDiabetesNurseForm', 686, true);
end;
end.



{
INSERT INTO MC_PARAMETERS(ID, NAME, NOTE, MC_NAME)
VALUES(685, 'Tedavi uyumu', NULL, 'MCDiabetesNurseForm');


INSERT INTO MC_PARAMETERS_DETAIL(ID, MCP_ID, NAME, NOTE, VALUE, IS_ACTIVE)
VALUES((SELECT MAX(ID)+1 FROM MC_PARAMETERS_DETAIL), 685, 'Var', NULL, 1, '1');

INSERT INTO MC_PARAMETERS_DETAIL(ID, MCP_ID, NAME, NOTE, VALUE, IS_ACTIVE)
VALUES((SELECT MAX(ID)+1 FROM MC_PARAMETERS_DETAIL), 685, 'Yok', NULL, 2, '1');

COMMIT;
}
