unit paxbootstrap.button;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, Controls, paxbootstrap.icons;

type

  { TButtonAwesome }

  TButtonAwesome = class(TGraphicControl)
  private
    FBackgroundColor: TColor;
    FBorderColor: TColor;
    FFaIcon: TFontAwesome;
    FGlyph: TBitmap;
    FRound: integer;
    FMouseHover: boolean;
    procedure SetBackgroundColor(AValue: TColor);
    procedure SetBorderColor(AValue: TColor);
    procedure SetFaIcon(AValue: TFontAwesome);
    procedure SetRound(AValue: integer);
  protected
    procedure MouseEnter; override;
    procedure MouseLeave; override;
    procedure Paint; override;
    procedure LoadFontAwesomeIcon;
    procedure FontChanged(Sender: TObject); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Update; override;
  published
    property OnClick;
    property Font;
    property FaIcon: TFontAwesome read FFaIcon write SetFaIcon;
    property Round: integer read FRound write SetRound;
    property BorderColor: TColor read FBorderColor write SetBorderColor;
    property BackgroundColor: TColor read FBackgroundColor write SetBackgroundColor;
  end;



implementation

uses
  FPimage, FPImgCanv;

{ TButtonAwesome }

procedure TButtonAwesome.SetFaIcon(AValue: TFontAwesome);
begin
  if FFaIcon = AValue then
  begin
    Exit;
  end;
  FFaIcon := AValue;
  Invalidate;
end;

procedure TButtonAwesome.SetBorderColor(AValue: TColor);
begin
  if FBorderColor = AValue then
    Exit;
  FBorderColor := AValue;
end;

procedure TButtonAwesome.SetBackgroundColor(AValue: TColor);
begin
  if FBackgroundColor = AValue then
    Exit;
  FBackgroundColor := AValue;
  Invalidate;
end;

procedure TButtonAwesome.SetRound(AValue: integer);
begin
  if FRound = AValue then
  begin
    Exit;
  end;
  FRound := AValue;
  Invalidate;
end;

procedure TButtonAwesome.MouseEnter;
begin
  inherited MouseEnter;
  FMouseHover := True;
  Update;
end;

procedure TButtonAwesome.MouseLeave;
begin
  inherited MouseLeave;
  FMouseHover := False;
  Update;
end;

procedure TButtonAwesome.LoadFontAwesomeIcon;
var
  B: TBitmap;
begin
  B := getFontAwesomeIcon(FaIcon, Font.Size, Color);
  FGlyph.Assign(B);
  FreeAndNil(B);
end;

procedure TButtonAwesome.FontChanged(Sender: TObject);
begin
  inherited FontChanged(Sender);
  Update;
end;


procedure TButtonAwesome.Paint;
var
  radius: integer;
begin
  radius := FRound;
  inherited Paint;
  Canvas.Pen.Color := BorderColor;
  if FMouseHover then
  begin
    Canvas.Brush.Color := BorderColor;
  end
  else
  begin
    Canvas.Brush.Color := FBackGroundColor;
  end;
  LoadFontAwesomeIcon;
  if (radius > 0) then
  begin
    Canvas.RoundRect(0, 0, Width, Height, radius, radius);
  end
  else
  begin
    Canvas.Rectangle(0, 0, Width, Height);
  end;
  Canvas.FloodFill(Width div 2, Height div 2, Canvas.Brush.Color, fsSurface);
  if FGlyph = nil then
  begin
    exit;
  end;
  Canvas.Draw(Width div 2 - FGlyph.Width div 2, Height div 2 - FGlyph.Height div 2, FGlyph);
end;

constructor TButtonAwesome.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FGlyph := TBitmap.Create;
  Font.Size := 16;
  Width := 32;
  Height := 32;
  FRound := 16;
end;

destructor TButtonAwesome.Destroy;
begin
  FreeAndNil(FGlyph);
  inherited Destroy;
end;

procedure TButtonAwesome.Update;
begin
  if (csLoading in ComponentState) then
  begin
    exit;
  end;
  if Parent <> nil then
  begin
    Paint;
  end;
end;

end.
