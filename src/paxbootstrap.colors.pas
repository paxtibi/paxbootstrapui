unit paxbootstrap.colors;

{$mode objfpc}{$H+}
{$ModeSwitch typehelpers}

interface

uses
  Classes, SysUtils, Graphics;

const
  MIN_RADIX = 2;
  MAX_RADIX = 36;


const
  clGrayBase = clBlack;
  clGrayDarker = TColor($222222);
  clGrayDark = TColor($333333);
  clGray: TColor = TColor($555555);
  clGrayLight: TColor = TColor($777777);
  clGrayLighter: TColor = TColor($EEEEEE);

  clBrandPrimary = TColor($b77a33);
  clBrandSuccess = TColor($5cb85c);
  clBrandInfo = TColor($dec05b);
  clBrandWarning = TColor($4eadf0);
  clBrandDanger = TColor($4f53d9);
  clBodyBg = TColor($ffffff);
  clTextColor = clGrayDark;
  clLinkColor = clBrandPrimary;

type
  ENumberFormatException = class(Exception)

  end;

  TRGBA = record
    a: byte;
    b: byte;
    r: byte;
    g: byte;
  end;

  THSLA = record
    hue: single;
    saturation: single;
    lightness: single;
    alpha: single;
  end;

function hsla(h: single; s: single; l: single; a: single): TRGBA; overload;
function hsla(const hsl: THSLA): TRGBA; overload;

function toHSL(rgb: TRGBA): THSLA;
function decode(color: tcolor): TRGBA;
function encode(rgb: TRGBA): TColor;


function parseInt(Value: string; radix: int32): int64;
function cssCodeToColor(webCode: string): TColor;
function darken(color: TColor; percent: single): TColor;
function lighten(color: TColor; percent: single): TColor;

function clamp(val: single): single;

implementation

uses
  Math;

const
  numberDictionary = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';


function parseInt(Value: string; radix: int32): int64;

  function getDigit(Value: char): integer;
  var
    idx: integer;
  begin
    Result := -1;
    for idx := 1 to numberDictionary.Length do
    begin
      if numberDictionary[idx] = Value then
        exit(idx - 1);
    end;
  end;

var
  negative: boolean = False;
  i: int64 = 1;
  len: integer;
  limit: int64 = -int64.MaxValue;
  multmin: int64 = 0;
  digit: int64 = 0;
  firstChar: integer;
begin
  Result := 0;
  len := length(Value);
  Value := UpperCase(Value);
  if (radix < 2) then
  begin
    raise  ENumberFormatException.CreateFmt('radix %d less %d', [radix, MIN_RADIX]);
  end;

  if (radix > MAX_RADIX) then
  begin
    raise  ENumberFormatException.CreateFmt('radix %d greater %d', [radix, MAX_RADIX]);
  end;

  if (len > 0) then
  begin
    firstChar := numberDictionary.IndexOf(Value[1]);
    if (firstChar < 0) then
    begin
      if (Value[1] = '-') then
      begin
        negative := True;
        limit := int64.MinValue;
      end
      else
      if (Value[1] <> '+') then
        raise ENumberFormatException.Create(Value);
      if (len = 1) then
        raise ENumberFormatException.Create(Value);
      i += 1;
    end;
  end;
  multmin := limit div radix;
  while (i < len) do
  begin
    digit := getDigit(Value[i]);
    Inc(i);
    if (digit < 0) then
    begin
      raise ENumberFormatException.Create(Value);
    end;
    if (Result < multmin) then
    begin
      raise ENumberFormatException.Create(Value);
    end;
    Result *= radix;
    if (Result < limit + digit) then
    begin
      raise ENumberFormatException.Create(Value);
    end;
    Result += digit;
  end;

  if negative then
    Result := -Result;
end;

function cssCodeToColor(webCode: string): TColor;
var
  colorString: string;
begin
  SetLength(colorString, 6);
  if webCode.Length = 4 then
  begin
    colorString[1] := webCode[2];
    colorString[2] := webCode[2];
    colorString[3] := webCode[3];
    colorString[4] := webCode[3];
    colorString[5] := webCode[4];
    colorString[6] := webCode[4];
  end
  else
  begin
    colorString[1] := webCode[2];
    colorString[2] := webCode[3];
    colorString[3] := webCode[4];
    colorString[4] := webCode[5];
    colorString[5] := webCode[6];
    colorString[6] := webCode[7];
  end;
  Result := $ff000000 or parseInt(colorString, 16);
end;

function hsla(h: single; s: single; l: single; a: single): TRGBA;

  function hue(m1, m2, h: single): single;
  begin
    if (h < 0) then
      h := h + 1
    else
    if h > 1 then
      h := h - 1;

    if (h * 6 < 1) then
      exit(m1 + (m2 - m1) * h * 6)
    else if (h * 2 < 1) then
      exit(m2)
    else if (h * 3 < 2) then
      exit(m1 + (m2 - m1) * (2 / 3 - h) * 6)
    else
      exit(m1);
  end;

var
  m1, m2: single;
  rgb: TRGBA;

begin

  while h > 360 do
    h -= 360;
  h := h / 360;
  s := clamp(s);
  l := clamp(l);
  a := clamp(a);
  if l <= 0.5 then
    m2 := l * (s + 1)
  else
    m2 := l + s - l * s;
  m1 := l * 2 - m2;

  rgb.r := trunc(hue(m1, m2, h + 1 / 3) * 255);
  rgb.g := trunc(hue(m1, m2, h) * 255);
  rgb.b := trunc(hue(m1, m2, h - 1 / 3) * 255);
  encode(rgb);
end;

function hsla(const hsl: THSLA): TRGBA;
var
  color: TRGBA;
begin
  color := hsla(hsl.hue, hsl.saturation, hsl.lightness, hsl.alpha);
  Result := color;
end;

function toHSL(rgb: TRGBA): THSLA;
var //set these variables to your needs, e.g. 360, 255, 255
  MaxHue: integer = 360;
  MaxSat: integer = 255;
  MaxLum: integer = 255;
var
  R, G, B, D, Cmax, Cmin, h, s, l: double;
begin
  R := RGB.R / 255;
  G := RGB.G / 255;
  B := RGB.B / 255;
  Cmax := Max(R, Max(G, B));
  Cmin := Min(R, Min(G, B));
  L := (Cmax + Cmin) / 2;
  if Cmax = Cmin then
  begin
    H := 0;
    S := 0;
  end
  else
  begin
    D := Cmax - Cmin;
    //calc L
    if L < 0.5 then
      S := D / (Cmax + Cmin)
    else
      S := D / (2 - Cmax - Cmin);
    //calc H
    if R = Cmax then
      H := (G - B) / D
    else
    if G = Cmax then
      H := 2 + (B - R) / D
    else
      H := 4 + (R - G) / D;
    H := H / 6;
    if H < 0 then
      H := H + 1;
  end;
  Result.hue := round(H * MaxHue);
  Result.saturation := round(S * MaxSat);
  Result.lightness := round(L * MaxLum);
end;

function decode(color: tcolor): TRGBA;
begin
  Result.a := $FF;
  Result.r := Red(color);
  Result.g := Green(color);
  Result.b := Blue(color);
end;

function encode(rgb: TRGBA): TColor;
begin
  Result := ((rgb.r shl 0) and $00000000ff) or (rgb.g shl $0000ff00) or ((rgb.b shl 16) and $00ff0000) or ((rgb.b shl 24) and $ff000000);
end;

(*
  from less-node.js

  darken: function (color, amount, method) {
  var hsl = color.toHSL();

        if (typeof method !== 'undefined' && method.value === 'relative') {
            hsl.l -=  hsl.l * amount.value / 100;
        }
        else {
            hsl.l -= amount.value / 100;
        }
        hsl.l = clamp(hsl.l);
        return hsla(color, hsl);
},
*)

function darken(color: TColor; percent: single): TColor;
var
  rgb: TRGBA;
  hsl: THSLA;
begin
  rgb := decode(color);
  hsl := toHSL(rgb);
  hsl.lightness -= hsl.lightness * percent;
  hsl.lightness := clamp(hsl.lightness);
  Result := encode(hsla(hsl));
end;

(*
  from less-node.js

  lighten: function (color, amount, method) {
        var hsl = color.toHSL();

        if (typeof method !== 'undefined' && method.value === 'relative') {
            hsl.l +=  hsl.l * amount.value / 100;
        }
        else {
            hsl.l += amount.value / 100;
        }
        hsl.l = clamp(hsl.l);
        return hsla(color, hsl);
    },
*)
function lighten(color: TColor; percent: single): TColor;
var
  rgb: TRGBA;
  hsl: THSLA;
begin
  rgb := decode(color);
  hsl := toHSL(rgb);
  hsl.lightness += hsl.lightness * percent;
  hsl.lightness := clamp(hsl.lightness);
  Result := encode(hsla(hsl));
end;

function clamp(val: single): single;
begin
  Result := Math.min(1, Math.max(0, val));
end;

initialization


end.
