object FmReg: TFmReg
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 471
  ClientWidth = 649
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 433
    Width = 643
    Height = 35
    Align = alBottom
    TabOrder = 0
    object btnPost: TBitBtn
      AlignWithMargins = True
      Left = 483
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Salvar'
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      AlignWithMargins = True
      Left = 564
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
    end
  end
  object imgTitle: TcxImage
    Left = 0
    Top = 0
    Align = alTop
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000332
      0000006808060000002AC8C5210000000467414D410000B18F0BFC6105000000
      097048597300000EC400000EC401952B0E1B0000026449444154785EEDD72111
      85500000C1DF0CFB23E06880271F83A3D3C33304E08615AB2EC1FDA6FF390000
      004A8C0C00009063640000801C23030000E41819000020C7C800000039460600
      00C831320000408E91010000728C0C00009063640000801C23030000E4181900
      0020C7C80000003946060000C831320000408E91010000728C0C000090636400
      00801C23030000E41819000020C7C80000003946060000C831320000408E9101
      0000728C0C00009063640000801C23030000E41819000020C7C8000000394606
      0000C831320000408E91010000728C0C00009063640000801C23030000E41819
      000020C7C80000003946060000C831320000408E91010000728C0C0000906364
      0000801C23030000E41819000020C7C80000003946060000C831320000408E91
      010000728C0C00009063640000801C23030000E41819000020C7C80000003946
      060000C831320000408E91010000728C0C00009063640000801C23030000E418
      19000020C7C80000F07ACBB68F793D1E1BDF64640000783D13C39D9101000072
      8C0C00009063640000801C23030000E41819000020C7C80000003946060000C8
      31320000408E91010000728C0C00009063640000801C23030000E41819000020
      C7C80000003946060000C831320000408E91010000728C0C0000906364000080
      1C23030000E41819000020C7C80000003946060000C831320000408E91010000
      728C0C00009063640000801C23030000E41819000020C7C80000003946060000
      C831320000408E91010000728C0C00009063640000801C23030000E418190000
      20C7C80000003946060000C831320000408E9101000062CE7101948A3F8631A9
      F6DF0000000049454E44AE426082}
    Properties.FitMode = ifmStretch
    TabOrder = 1
    Height = 49
    Width = 649
  end
  object lblTitleMain: TcxLabel
    Left = 15
    Top = 4
    Caption = 'Principal'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold, fsItalic]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 26
    Caption = 'Secundario'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -11
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold, fsItalic]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 49
    Width = 649
    Height = 381
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object laylkaflRegistration: TdxLayoutLookAndFeelList
    Left = 592
    Top = 56
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
    end
  end
  object dsReg: TDataSource
    AutoEdit = False
    DataSet = cdsReg
    Left = 592
    Top = 168
  end
  object cdsReg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 113
  end
end
