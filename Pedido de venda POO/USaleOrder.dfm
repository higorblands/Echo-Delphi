object FormSaleOrder: TFormSaleOrder
  Left = 0
  Top = 0
  Caption = 'Sale Order'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LOrder: TLabel
    Left = 24
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Sale Num'
  end
  object LSalerName: TLabel
    Left = 19
    Top = 46
    Width = 54
    Height = 13
    Caption = 'Saler Name'
  end
  object LOrderValue: TLabel
    Left = 19
    Top = 86
    Width = 49
    Height = 13
    Caption = 'Sale Value'
  end
  object LClienteName: TLabel
    Left = 15
    Top = 126
    Width = 63
    Height = 13
    Caption = 'Cliente Name'
  end
  object edtSaleNum: TEdit
    Left = 96
    Top = 8
    Width = 121
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    TextHint = 'Enter sale number'
  end
  object edtSalerName: TEdit
    Left = 96
    Top = 43
    Width = 121
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    TextHint = 'Enter saler name'
  end
  object edtSaleValue: TEdit
    Left = 96
    Top = 83
    Width = 121
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    TextHint = 'Enter sale value'
  end
  object edtClienteName: TEdit
    Left = 96
    Top = 123
    Width = 121
    Height = 21
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 3
    TextHint = 'Enter cliente name'
  end
  object btnSave: TButton
    Left = 200
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 4
    OnClick = btnSaveClick
  end
end
