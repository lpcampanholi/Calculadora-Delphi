unit Calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn1: TButton;
    btn0: TButton;
    btnMaisMenos: TButton;
    btnC: TButton;
    btnCE: TButton;
    btnBackspace: TButton;
    btnDot: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnIgual: TButton;
    btnAdicao: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisao: TButton;
    lbPainel: TLabel;
    procedure btn0Click(Sender: TObject);
    procedure btnMaisMenosClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  numeroAtual, novoNumero: double;
  operacao: integer;
  operacaoConcluida: boolean;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
begin
  numeroAtual := StrToFloat(lbPainel.Caption);
  operacao := 3;
  lbPainel.Caption := '';
end;

procedure TForm1.btnSubtracaoClick(Sender: TObject);
begin
  numeroAtual := StrToFloat(lbPainel.Caption);
  operacao := 2;
  lbPainel.Caption := '';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '1';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '1';
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '0';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '0';
end;

procedure TForm1.btnMaisMenosClick(Sender: TObject);
begin
  numeroAtual := StrToFloat(lbPainel.Caption);
  lbPainel.Caption := FloatToStr(numeroAtual * -1);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '2';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '3';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '4';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '5';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '6';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '7';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '8';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
  begin
  lbPainel.Caption := '';
  end;
  if operacaoConcluida then
  begin
  lbPainel.Caption := '9';
  operacaoConcluida := False;
  end
  else
  lbPainel.Caption := lbPainel.Caption + '9';
end;

procedure TForm1.btnAdicaoClick(Sender: TObject);
begin
  numeroAtual := StrToFloat(lbPainel.Caption);
  operacao := 1;
  lbPainel.Caption := '';
end;

procedure TForm1.btnBackspaceClick(Sender: TObject);
var
  str: string;
  num: double;
begin
  str := lbPainel.Caption;
  if Length(str) > 0 then
  begin
    str := Copy(str, 1, Length(str) - 1);
    if str <> '' then
    begin
      num := StrToFloat(str);
       lbPainel.Caption := FloatToStr(num);
    end;
  end;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  numeroAtual := 0;
  operacao := 0;
  lbPainel.Caption := '0';
end;

procedure TForm1.btnCEClick(Sender: TObject);
begin
  lbPainel.Caption := '';
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
  numeroAtual := StrToFloat(lbPainel.Caption);
  operacao := 4;
  lbPainel.Caption := '';
end;

procedure TForm1.btnDotClick(Sender: TObject);
begin
  if Pos(',', lbPainel.Caption) = 0 then
    lbPainel.Caption :=lbPainel.Caption + ',';
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
  novoNumero := StrToFloat(lbPainel.Caption);
  case operacao of
  1:
    begin
      numeroAtual := numeroAtual + novoNumero;
      lbPainel.Caption := FloatToStr (numeroAtual);
    end;
  2:
    begin
      numeroAtual := numeroAtual - novoNumero;
      lbPainel.Caption := FloatToStr (numeroAtual);
    end;
  3:
    begin
      numeroAtual := numeroAtual * novoNumero;
      lbPainel.Caption := FloatToStr (numeroAtual);
    end;
  4:
    begin
      if novoNumero <> 0 then
      begin
      numeroAtual := numeroAtual / novoNumero;
      lbPainel.Caption := FloatToStr (numeroAtual);
      end
      else
      lbPainel.Caption := 'Erro: divisão por zero';
    end;
  end;
  numeroAtual := 0;
  operacao := 0;
  operacaoConcluida := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  If lbPainel.Caption = '0' then
    lbPainel.Caption := '';
  lbPainel.Caption := lbPainel.Caption + '0';
end;

end.

