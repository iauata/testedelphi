unit uFuncoes;

interface

uses
   SysUtils, Dialogs, Controls, Forms, Windows, TypInfo, Registry;

type
   schar = set of char;

function SomenteNum(const s: string; conj: schar): boolean;
function ValidaCPF(const Value: String): boolean;
function ValidaCNPJ(const Value: String): boolean;
Function VersaoExeStr: String;
function DiretorioExe: String;
function VersaoExeInt: Integer;
function fnc_GetComputerName : string;


implementation


Function VersaoExeStr: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;

function SomenteNum(const s: string; conj: schar): boolean;
var
   i: integer;
begin
   for i := 1 to Length(s) do
      if not (s[i] in ['0'..'9']) then
         begin
            result := false;
            exit;
         end;
   result := true;
end;

function ValidaCPF(const Value: String): boolean;
var
   digito1, digito2: integer;
   i, soma: integer;
begin
   {analisa CPF no formato 00000000000}
   if Length(Value) <> 11 then
      begin
         result := false;
         exit;
      end;

   if Value = StringOfChar(Value[1], Length(Value)) then
      begin
         result := false;
         exit;
      end;

   {verifica se todos os caracteres são nº}
   if not SomenteNum(Value, ['0'..'9']) then
      begin
         result := false;
         exit;
      end;

   {comeca a verificacao do digito}
   {1° digito}
   soma := 0;
   for i := 1 to 9 do
      Inc(soma, StrToInt(Value[10 - i]) * (i + 1));
   digito1 := 11 - (soma mod 11);
   if digito1 > 9 then
      digito1 := 0;

   {2° digito}
   soma := 0;
   for i := 1 to 10 do
      Inc(soma, StrToInt(Value[11 - i]) * (i + 1));
   digito2 := 11 - (soma mod 11);
   if digito2 > 9 then
      digito2 := 0;

   {Checa os dois dígitos}
   result := (Digito1 = StrToInt(Value[10])) and
      (Digito2 = StrToInt(Value[11]));
end;

function ValidaCNPJ(const Value: String): boolean;
var
   digito1, digito2: integer;
   i, soma: integer;
begin
   {analisa CGC no formato 00000000000000}
   if Length(Value) <> 14 then
      begin
         result := false;
         exit;
      end;

   {verifica se todos os caracteres são nº}
   if not SomenteNum(Value, ['0'..'9']) then
      begin
         result := false;
         exit;
      end;

   {comeca a verificacao do digito}
   {1° digito}
   soma := 0;
   for i := 1 to 12 do
      begin
         if i < 5 then
            Inc(soma, StrToInt(Value[i]) * (6 - i))
         else
            Inc(soma, StrToInt(Value[i]) * (14 - i))
      end;
   digito1 := 11 - (soma mod 11);
   if digito1 > 9 then
      digito1 := 0;

   {2° digito}
   soma := 0;
   for i := 1 to 13 do
      begin
         if i < 6 then
            Inc(soma, StrToInt(Value[i]) * (7 - i))
         else
            Inc(soma, StrToInt(Value[i]) * (15 - i))
      end;
   digito2 := 11 - (soma mod 11);
   if digito2 > 9 then
      digito2 := 0;

   {Checa os dois dígitos}
   result := (Digito1 = StrToInt(Value[13])) and
      (Digito2 = StrToInt(Value[14]));
end;

function DiretorioExe: String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function VersaoExeInt: Integer;
begin
   Result := StrToIntDef(StringReplace(VersaoExeStr, '.', '', [rfReplaceAll]), 0);
end;

function Min(a, b: integer): integer;
begin
  if a < b then
     Result := a
  else
     Result := b;
end;

function fnc_GetComputerName : string;
var ipbuffer : string;
      nsize : dword;
begin
   nsize := 255;
   SetLength(ipbuffer,nsize);
   if GetComputerName(pchar(ipbuffer),nsize) then
      result := ipbuffer;
end;

end.

