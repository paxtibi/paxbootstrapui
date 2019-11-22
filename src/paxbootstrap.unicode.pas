unit paxbootstrap.unicode;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function UnicodeCodePointToUTF8(codePoint: UInt64): string;

implementation

//http://www.faqs.org/rfcs/rfc2279.html
function UnicodeCodePointToUTF8(codePoint: UInt64): string;
type
  TBoundary = record
    lower: UInt64;
    upper: UInt64;
    mask: byte;
    len: byte;
  end;

  {
    0000 0000-0000 007F   0xxxxxxx
    0000 0080-0000 07FF   110xxxxx 10xxxxxx
    0000 0800-0000 FFFF   1110xxxx 10xxxxxx 10xxxxxx
    0001 0000-001F FFFF   11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
    0020 0000-03FF FFFF   111110xx 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx
    0400 0000-7FFF FFFF   1111110x 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx 10xxxxxx
 }

const
  Boundaries: array[0..5] of
    TBoundary = (
    (lower: $00000000; upper: $0000007F; mask: $00; len: 1),
    (lower: $00000080; upper: $000007FF; mask: $C0; len: 2),
    (lower: $00000800; upper: $0000FFFF; mask: $E0; len: 3),
    (lower: $00010000; upper: $001FFFFF; mask: $F0; len: 4),
    (lower: $00200000; upper: $03FFFFFF; mask: $F8; len: 5),
    (lower: $04000000; upper: $7FFFFFFF; mask: $FC; len: 6)
    );
var
  ret: array of byte;
  len, mask: word;
  idx: integer;
  sixBits: byte;
begin
  len := Boundaries[0].len;
  for idx := low(Boundaries) to High(Boundaries) do
  begin
    if (codePoint > Boundaries[idx].lower) and (Boundaries[idx].upper < codePoint) then
    begin
      continue;
    end
    else
    begin
      mask := Boundaries[idx].mask;
      len := Boundaries[idx].len;
      break;
    end;
  end;
  SetLength(ret, len);
  for idx := len - 1 downto 1 do
  begin
    sixBits := codePoint and $3F;
    codePoint := codePoint shr 6;
    ret[idx] := $80 or sixBits;
  end;

  ret[0] := mask or (codePoint and $FF);

  SetLength(Result, Length(ret));
  Move(ret[0], Result[1], length(ret));
end;


initialization

end.
