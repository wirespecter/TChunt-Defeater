object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'TChunt Defeater - Anti Forensics Tool'
  ClientHeight = 76
  ClientWidth = 385
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
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 210
    Height = 13
    Caption = 'Numbers of NOPS you want to add at EOF: '
  end
  object Label2: TLabel
    Left = 319
    Top = 40
    Width = 15
    Height = 13
    Caption = 'x 3'
  end
  object Label3: TLabel
    Left = 40
    Top = 8
    Width = 302
    Height = 13
    Caption = 'Drag your truecrypt encrypted containers inside this window...'
  end
  object Edit1: TEdit
    Left = 256
    Top = 37
    Width = 57
    Height = 21
    TabOrder = 0
    Text = '1'
  end
end
