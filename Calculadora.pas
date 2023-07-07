unit Calculadora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    txt_DISPLAY: TEdit;
    btn_clearNum: TButton;
    btn_clearCalc: TButton;
    btn_equal: TButton;
    btn_num7: TButton;
    btn_num8: TButton;
    btn_num9: TButton;
    btn_multiply: TButton;
    btn_num4: TButton;
    btn_num5: TButton;
    btn_num6: TButton;
    btn_minus: TButton;
    btn_num1: TButton;
    btn_num2: TButton;
    btn_num3: TButton;
    btn_plus: TButton;
    btn_fraction: TButton;
    btn_signal: TButton;
    btn_num0: TButton;
    btn_float: TButton;
    btn_backspace: TSpeedButton;
    procedure btn_plusClick(Sender: TObject);
    procedure btn_minusClick(Sender: TObject);
    procedure btn_multiplyClick(Sender: TObject);
    procedure btn_fractionClick(Sender: TObject);
    procedure btn_numClick(Sender: TObject);
    procedure btn_clearNumClick(Sender: TObject);
    procedure btn_equalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FOperacao : Char;
    FTotal: Double;
    FUltimoNumero: Double;

    procedure Calcular;
    procedure Limpar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}



procedure TForm1.btn_plusClick(Sender: TObject);
begin
        FUltimoNumero := StrtoFloat(txt_DISPLAY.Text);
        Calcular;
        FOperacao := '+';
end;

procedure TForm1.btn_minusClick(Sender: TObject);
begin
        FUltimoNumero := StrtoFloat(txt_DISPLAY.Text);
        Calcular;
        FOperacao := '-';
end;

procedure TForm1.btn_multiplyClick(Sender: TObject);
begin
        FUltimoNumero := StrtoFloat(txt_DISPLAY.Text);
        Calcular;
        FOperacao := '*';
end;

procedure TForm1.btn_fractionClick(Sender: TObject);
begin
        FUltimoNumero := StrtoFloat(txt_DISPLAY.Text);
        Calcular;
        FOperacao := '/';
end;

procedure TForm1.btn_numClick(Sender: TObject);
begin
  if FUltimoNumero = 0 then
    txt_Display.Text := TButton(Sender).Caption
  else
    txt_DISPLAY.Text := txt_DISPLAY.Text + TButton(Sender).Caption;
    FUltimoNumero := StrToFLoat(txt_DISPLAY.Text);
end;

procedure TForm1.btn_clearNumClick(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.Calcular;
begin
  case FOperacao of
    '+' : FTotal := FTotal + StrToFloat(txt_DISPLAY.Text);
    '-' : FTotal := FTotal - StrToFloat(txt_DISPLAY.Text);
    '*' : FTotal := FTotal * StrToFloat(txt_DISPLAY.Text);
    '/' : FTotal := FTotal / StrToFloat(txt_DISPLAY.Text);
  end;

  txt_DISPLAY.Text := FloatToStr(FTotal);
  FUltimoNumero := 0;
end;

procedure TForm1.btn_equalClick(Sender: TObject);
begin
  Calcular;
end;

procedure TForm1.Limpar;
begin
  FUltimoNumero := 0;
  txt_DISPLAY.Text := '0';
  FOperacao := '+';
  FTotal  := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Limpar;
end;

end.
