unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var prevod:string;
  sustava,zvysok,cislo,i:integer;
  a:array[1..100] of integer;
begin

sustava:=strtoint(edit1.text);
  cislo:=strtoint(edit2.text);

if sustava>9 then showmessage('Základ sústavy musí byť menší ako 10. Zadaj inú sústavu.') //ošetrenie
  else

    begin
      prevod:='';
      zvysok:=0;

      repeat                                             //opakuje dokým cislo nebude rovné 0
        inc(zvysok);
        a[zvysok]:=cislo mod sustava;                    //prvok poľa-zvyšok po delení
        cislo:=cislo div sustava;                        //za číslo dosasdzuje číslo podelené sústavou
      until cislo=0;

      for i:=zvysok downto 1 do                          //usporiada čísla v správnom poradí
         prevod:=prevod+inttostr(a[i]);

      label4.caption:='Prevedené číslo: '+prevod;        //vypíše prevedené číslo

    end;

end;

end.

