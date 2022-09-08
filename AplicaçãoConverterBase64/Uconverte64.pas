unit Uconverte64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, EncdDecd, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME, ExtCtrls, pngimage;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    IdEncoderMIME1: TIdEncoderMIME;
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function Encode64(): string;
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if  OpenDialog1.Execute then
  begin
    Edit1.Text:= OpenDialog1.FileName;
  end
  else
    ShowMessage('Arquivo não localizado');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ShowMessage('Selecione um PDF primeiro')
  else
  begin
    Memo1.Lines.Text:= Encode64();
    ShowMessage('Conversão para base64 realizada com sucesso!');
  end
  
end;

function TForm1.Encode64(): string;
var
  LStream: TMemoryStream;
  pdf64: string;
begin
  LStream := TMemoryStream.Create;
  try
    LStream.LoadFromFile(OpenDialog1.Files[0]);
    pdf64 := IdEncoderMIME1.Encode(LStream);
  finally
    Result := pdf64;
    LStream.Free;
  end;
end;
end.
