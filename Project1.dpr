program Project1;

uses
  Forms,
  Calculadora in 'Calculadora.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
