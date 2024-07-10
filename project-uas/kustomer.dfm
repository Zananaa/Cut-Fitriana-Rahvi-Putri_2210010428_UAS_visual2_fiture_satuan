object Form1: TForm1
  Left = 204
  Top = 131
  Width = 870
  Height = 450
  Caption = 'Kustomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 329
    Height = 129
    Caption = 'Pencarian'
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 40
      Width = 37
      Height = 14
      Caption = 'NAMA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 64
      Top = 40
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object btn6: TButton
      Left = 24
      Top = 80
      Width = 75
      Height = 33
      Caption = 'CARI'
      TabOrder = 1
      OnClick = btn6Click
    end
    object btn8: TButton
      Left = 216
      Top = 80
      Width = 75
      Height = 33
      Caption = 'BATAL'
      TabOrder = 2
      OnClick = btn8Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 360
    Top = 8
    Width = 465
    Height = 241
    Caption = 'Tambah Data'
    TabOrder = 1
    object lbl2: TLabel
      Left = 16
      Top = 32
      Width = 23
      Height = 14
      Caption = 'NIK:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 72
      Width = 37
      Height = 14
      Caption = 'NAMA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 16
      Top = 112
      Width = 32
      Height = 14
      Caption = 'TELP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 152
      Width = 38
      Height = 14
      Caption = 'EMAIL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 256
      Top = 32
      Width = 51
      Height = 14
      Caption = 'ALAMAT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 256
      Top = 72
      Width = 57
      Height = 14
      Caption = 'MEMEBER:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 256
      Top = 112
      Width = 47
      Height = 14
      Caption = 'DISKON:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 328
      Top = 112
      Width = 18
      Height = 14
      Caption = 'lbl9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 16
      Top = 192
      Width = 75
      Height = 33
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 104
      Top = 192
      Width = 75
      Height = 33
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 192
      Top = 192
      Width = 75
      Height = 33
      Caption = 'UBAH'
      TabOrder = 2
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 280
      Top = 192
      Width = 75
      Height = 33
      Caption = 'HAPUS'
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 368
      Top = 192
      Width = 75
      Height = 33
      Caption = 'BATAL'
      TabOrder = 4
      OnClick = btn5Click
    end
    object edt2: TEdit
      Left = 64
      Top = 32
      Width = 153
      Height = 21
      TabOrder = 5
    end
    object edt3: TEdit
      Left = 64
      Top = 72
      Width = 153
      Height = 21
      TabOrder = 6
    end
    object edt4: TEdit
      Left = 64
      Top = 112
      Width = 153
      Height = 21
      TabOrder = 7
    end
    object edt5: TEdit
      Left = 64
      Top = 152
      Width = 153
      Height = 21
      TabOrder = 8
    end
    object edt6: TEdit
      Left = 312
      Top = 32
      Width = 137
      Height = 21
      TabOrder = 9
    end
    object cbb1: TComboBox
      Left = 328
      Top = 72
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      OnChange = cbb1Change
      Items.Strings = (
        'Yes'
        'No')
    end
    object btn7: TButton
      Left = 256
      Top = 144
      Width = 75
      Height = 33
      Caption = 'LAPORAN'
      TabOrder = 11
      OnClick = btn7Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 264
    Width = 809
    Height = 137
    DataSource = DataModule2.dskustomer
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
