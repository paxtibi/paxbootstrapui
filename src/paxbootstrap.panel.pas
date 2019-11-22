unit paxbootstrap.panel;

{$mode objfpc}{$H+}

interface

uses
  LCLIntf, LCLType, paxbootstrap.colors,
  Buttons, Graphics, Controls, Classes, SysUtils, ExtCtrls, paxbootstrap.icons, paxbootstrap.button, EasyLazFreeType;

type
  { TAccordionPanel }
  TAccordionPanel = class(TCustomPanel)
  private
    FAnimationIcon: TFontAwesome;
    FBackGroundColor: TColor;
    FBorderColor: TColor;
    FButtonRight: boolean;
    FcloseIcon: TFontAwesome;
    FList: TList;
    FIsOpen: boolean;
    FMaxHeight: integer;
    FMaxWidth: integer;
    FMinHeight: integer;
    FMinWidth: integer;
    FHorizontal: boolean;
    FopenIcon: TFontAwesome;
    FTextColor: TColor;
    FToggleButton: TButtonAwesome;
    function GetButtonHeight: integer;
    function GetButtonRound: integer;
    function getButtonWidth: integer;
    function GetShowToggleButton: boolean;
    procedure SetanimationIcon(AValue: TFontAwesome);
    procedure SetBackGroundColor(AValue: TColor);
    procedure SetBorderColor(AValue: TColor);
    procedure SetButtonHeight(AValue: integer);
    procedure SetButtonRight(AValue: boolean);
    procedure SetButtonRound(AValue: integer);
    procedure setButtonWidth(AValue: integer);
    procedure SetcloseIcon(AValue: TFontAwesome);
    procedure SetInternalOnClick(AValue: TNotifyEvent);
    procedure SetIsOpen(AValue: boolean);
    procedure SetMaxHeight(AValue: integer);
    procedure SetMaxWidth(AValue: integer);
    procedure SetMinHeight(AValue: integer);
    procedure SetMinWidth(AValue: integer);

    procedure OpenAnimationHorizontal(Sender: TObject);
    procedure OpenAnimationVertical(Sender: TObject);
    procedure CloseAnimationHorizontal(Sender: TObject);
    procedure CloseAnimationVertical(Sender: TObject);
    procedure SetopenIcon(AValue: TFontAwesome);
    procedure SetShowToggleButton(AValue: boolean);
    procedure SetTextColor(AValue: TColor);
  protected
    FInternalTimer: TTimer;
    procedure StartOpen(Sender: TObject);
    procedure StartClose(Sender: TObject);
    procedure StopTimer(Sender: TObject);
    procedure Paint; override;
    procedure DoOnResize; override;
    procedure FontChanged(Sender: TObject); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure AdjustClientRect(var aRect: TRect); override;
    procedure CompleteClose;
    procedure CompleteOpen;
    procedure CreateHandle; override;
    procedure SetAlign(Value: TAlign); override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure EraseBackground(DC: HDC); override;
    procedure Open;
    procedure Close;
    procedure toggle;
  published
    property Align;
    property Caption;
    property MinHeight: integer read FMinHeight write SetMinHeight;
    property MaxHeight: integer read FMaxHeight write SetMaxHeight;
    property MinWidth: integer read FMinWidth write SetMinWidth;
    property MaxWidth: integer read FMaxWidth write SetMaxWidth;
    property IsOpen: boolean read FIsOpen write SetIsOpen;
    property Font;
    property ShowToggleButton: boolean read GetShowToggleButton write SetShowToggleButton;
    property ButtonWidth: integer read getButtonWidth write setButtonWidth;
    property ButtonHeight: integer read GetButtonHeight write SetButtonHeight;
    property ButtonRound: integer read GetButtonRound write SetButtonRound;
    property ButtonRight: boolean read FButtonRight write SetButtonRight;
    property BackGroundColor: TColor read FBackGroundColor write SetBackGroundColor;
    property BorderColor: TColor read FBorderColor write SetBorderColor;
    property TextColor: TColor read FTextColor write SetTextColor;
    property openIcon: TFontAwesome read FopenIcon write SetopenIcon;
    property closeIcon: TFontAwesome read FcloseIcon write SetcloseIcon;
    property animationIcon: TFontAwesome read FanimationIcon write SetanimationIcon;
  end;

  { TNavigationPanel }

  TNavigationPanel = class(TCustomPanel)
  protected
    procedure Paint; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;

    procedure EraseBackground(DC: HDC); override;
  published
    property Align;
  end;

implementation

uses
  LazRegions, Math, GraphType;

{ TNavigationPanel }

procedure TNavigationPanel.EraseBackground(DC: HDC);
begin

end;

procedure TNavigationPanel.Paint;
var
  ClientArea: TRect = (vector: (0, 0, 0, 0));
begin
  ClientArea := BoundsRect;
  AdjustClientRect(ClientArea);
  Canvas.Brush.Bitmap := TBitmap.Create;
  Canvas.Brush.Bitmap.Width := ClientArea.Width;
  Canvas.Brush.Bitmap.Height := ClientArea.Height;
  Canvas.Brush.Bitmap.Canvas.GradientFill(ClientArea, TColor($ffffff), TColor($f8f8f8), gdVertical);
  Canvas.Pen.Color := clBodyBg;
  Canvas.RoundRect(BoundsRect, 4, 4);
  Canvas.Brush.Bitmap.Free;
end;

constructor TNavigationPanel.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
end;

destructor TNavigationPanel.Destroy;
begin
  inherited Destroy;
end;

{ TAccordionPanel }

procedure TAccordionPanel.OpenAnimationHorizontal(Sender: TObject);
begin
  if Width < (MaxWidth - 5) then
  begin
    Width := Width + (MaxWidth - Width) div 2;
  end
  else
  begin
    FInternalTimer.Enabled := False;
    CompleteOpen;
  end;
end;

procedure TAccordionPanel.OpenAnimationVertical(Sender: TObject);
begin
  if Height < (MaxHeight - 5) then
  begin
    Height := Height + (MaxHeight - Height) div 2;
  end
  else
  begin
    FInternalTimer.Enabled := False;
    CompleteOpen;
  end;
end;

procedure TAccordionPanel.CloseAnimationHorizontal(Sender: TObject);
var
  delta: integer;
begin
  delta := Width - FMinWidth;
  if abs(delta) > 5 then
  begin
    Width := Width - (abs(delta) div 2);
  end
  else
  begin
    FInternalTimer.Enabled := False;
    CompleteClose;
  end;
end;

procedure TAccordionPanel.CloseAnimationVertical(Sender: TObject);
var
  delta: integer;
begin
  delta := Height - FMinHeight;
  if abs(delta) > 5 then
  begin
    Height := Height - (abs(delta) div 2);
  end
  else
  begin
    FInternalTimer.Enabled := False;
    CompleteClose;
  end;
end;

procedure TAccordionPanel.SetopenIcon(AValue: TFontAwesome);
begin
  if FopenIcon = AValue then
    Exit;
  FopenIcon := AValue;
end;

procedure TAccordionPanel.SetShowToggleButton(AValue: boolean);
begin
  FToggleButton.Visible := AValue;
end;

procedure TAccordionPanel.SetTextColor(AValue: TColor);
begin
  if FTextColor = AValue then
    Exit;
  FTextColor := AValue;
  FToggleButton.Color := TextColor;
end;

procedure TAccordionPanel.StartOpen(Sender: TObject);
begin
  if FHorizontal then
  begin
    FInternalTimer.OnTimer := @OpenAnimationHorizontal;
  end
  else
  begin
    FInternalTimer.OnTimer := @OpenAnimationVertical;
  end;
  FInternalTimer.Enabled := True;
  FIsOpen := False;
end;

procedure TAccordionPanel.StartClose(Sender: TObject);
begin
  if FHorizontal then
  begin
    FInternalTimer.OnTimer := @CloseAnimationHorizontal;
  end
  else
  begin
    FInternalTimer.OnTimer := @CloseAnimationVertical;
  end;
  FInternalTimer.Enabled := True;
  FIsOpen := True;
end;

procedure TAccordionPanel.StopTimer(Sender: TObject);
begin
  if FToggleButton.onClick = @StartClose then
  begin
    fIsOpen := False;
    FToggleButton.onClick := @StartOpen;
  end
  else
  begin
    FToggleButton.onClick := @StartClose;
    FIsOpen := True;
  end;
end;


procedure TAccordionPanel.SetIsOpen(AValue: boolean);
begin
  if FIsOpen = AValue then
  begin
    Exit;
  end;
  FIsOpen := AValue;
  if FIsOpen then
  begin
    CompleteOpen;
  end
  else
  begin
    CompleteClose;
  end;
end;

procedure TAccordionPanel.SetInternalOnClick(AValue: TNotifyEvent);
begin
  if FToggleButton.onClick = AValue then
  begin
    Exit;
  end;
  FToggleButton.onClick := AValue;
end;

function TAccordionPanel.GetButtonHeight: integer;
begin
  Result := FToggleButton.Height;
end;

function TAccordionPanel.GetButtonRound: integer;
begin
  Result := FToggleButton.Round;
end;

function TAccordionPanel.getButtonWidth: integer;
begin
  Result := FToggleButton.Width;
end;

function TAccordionPanel.GetShowToggleButton: boolean;
begin
  Result := FToggleButton.Visible;
end;

procedure TAccordionPanel.SetanimationIcon(AValue: TFontAwesome);
begin
  if FanimationIcon = AValue then
    Exit;
  FanimationIcon := AValue;
  invalidate;
end;

procedure TAccordionPanel.SetBackGroundColor(AValue: TColor);
begin
  if FBackGroundColor = AValue then
    Exit;
  FBackGroundColor := AValue;
  FToggleButton.BackgroundColor := FBackGroundColor;
  invalidate;
end;

procedure TAccordionPanel.SetBorderColor(AValue: TColor);
begin
  if FBorderColor = AValue then
    Exit;
  FBorderColor := AValue;
  FToggleButton.BorderColor := FBorderColor;
  invalidate;
end;

procedure TAccordionPanel.SetButtonHeight(AValue: integer);
begin
  FToggleButton.Height := AValue;
  FMinHeight := Max(FMinHeight, FToggleButton.Height);
  Invalidate;
end;

procedure TAccordionPanel.SetButtonRight(AValue: boolean);
begin
  if FButtonRight = AValue then
  begin
    Exit;
  end;
  FButtonRight := AValue;
  if FButtonRight then
  begin
    FToggleButton.Left := 0;
  end
  else
  begin
    FToggleButton.left := Width - FToggleButton.Width;
  end;
  Invalidate;
end;

procedure TAccordionPanel.SetButtonRound(AValue: integer);
begin
  FToggleButton.Round := AValue;
  Invalidate;
end;

procedure TAccordionPanel.setButtonWidth(AValue: integer);
begin
  FToggleButton.Width := AValue;
  FMinWidth := Max(FMinWidth, FToggleButton.Width);
  Invalidate;
end;

procedure TAccordionPanel.SetcloseIcon(AValue: TFontAwesome);
begin
  if FcloseIcon = AValue then
    Exit;
  FcloseIcon := AValue;
  invalidate;
end;

procedure TAccordionPanel.SetMaxHeight(AValue: integer);
begin
  if FMaxHeight = AValue then
  begin
    Exit;
  end;
  FMaxHeight := AValue;
  if Height > FMaxHeight then
  begin
    Height := FMaxHeight;
  end;
  invalidate;
end;

procedure TAccordionPanel.SetMaxWidth(AValue: integer);
begin
  if FMaxWidth = AValue then
  begin
    Exit;
  end;
  FMaxWidth := AValue;
  if Width > FMaxWidth then
  begin
    Width := FMaxWidth;
  end;
  invalidate;
end;

procedure TAccordionPanel.SetMinHeight(AValue: integer);
begin
  if FMinHeight = AValue then
  begin
    Exit;
  end;
  FMinHeight := AValue;
  if Height < FMinHeight then
  begin
    Height := FMinHeight;
  end;
  invalidate;
end;

procedure TAccordionPanel.SetMinWidth(AValue: integer);
begin
  if FMinWidth = AValue then
  begin
    Exit;
  end;
  FMinWidth := AValue;
  if Width < FMinWidth then
  begin
    Width := FMinWidth;
  end;
  invalidate;
end;

procedure TAccordionPanel.Paint;
var
  DrawArea: TRect = (vector: (0, 0, 0, 0));
  ClientArea: TRect = (vector: (0, 0, 0, 0));
  style: TTextStyle = (Alignment: taCenter; Layout: tlCenter; SingleLine: True; Clipping: True; ExpandTabs: False; ShowPrefix: False;
  Wordbreak: True; Opaque: False; SystemFont: False; RightToLeft: False; EndEllipsis: True);
begin
  Canvas.Brush.Color := BackGroundColor;
  Canvas.Pen.Color := BorderColor;
  Canvas.Font.Color := TextColor;
  Canvas.Rectangle(BoundsRect);

  ClientArea := BoundsRect;
  AdjustClientRect(ClientArea);
  DrawArea.Height := Max(Canvas.TextHeight('Gg'), FToggleButton.Height);
  DrawArea.Width := Width;
  DrawArea.Inflate(-BorderWidth, -BorderWidth);

  if FInternalTimer.Enabled then
  begin
    FToggleButton.FaIcon := FanimationIcon;
  end
  else
  if IsOpen then
  begin
    FToggleButton.FaIcon := FcloseIcon;
  end
  else
  begin
    FToggleButton.FaIcon := FopenIcon;
  end;

  Canvas.Rectangle(DrawArea);
  if FIsOpen or FInternalTimer.Enabled then
    Canvas.TextRect(DrawArea, 2, 2, Caption, style);
end;

procedure TAccordionPanel.DoOnResize;
begin
  inherited DoOnResize;
  case Align of
    alRight, alLeft:
    begin
      FHorizontal := True;
    end;
    else
    begin
      FHorizontal := False;
    end;
  end;
  if Font.Size = 0 then
  begin
    Font.Size := Parent.Font.Size;
  end;
  if FButtonRight then
  begin
    FToggleButton.Left := 0;
  end
  else
  begin
    FToggleButton.left := Width - FToggleButton.Width;
  end;
end;

procedure TAccordionPanel.FontChanged(Sender: TObject);
begin
  inherited FontChanged(Sender);
  invalidate;
end;

procedure TAccordionPanel.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent <> self) then
  begin
    case Operation of
      opInsert:
      begin
        if (AComponent.Owner = self) and (AComponent <> FToggleButton) then
        begin
          FList.Add(AComponent);
        end;
      end;
      opRemove:
      begin
        if (AComponent <> FToggleButton) then
        begin
          if FList.IndexOf(AComponent) > -1 then
          begin
            FList.Remove(AComponent);
          end;
        end;
      end;
    end;
  end;
end;

procedure TAccordionPanel.AdjustClientRect(var aRect: TRect);
var
  TH: integer;
begin
  inherited AdjustClientRect(aRect);
  th := Canvas.TextHeight('Gg') + 3;
  aRect.SetLocation(0, th);
end;

constructor TAccordionPanel.Create(TheOwner: TComponent);
begin
  FList := TList.Create;
  inherited Create(TheOwner);
  FMinHeight := 32;
  FMinWidth := 32;
  FMaxHeight := 350;
  FMaxWidth := 350;
  FHorizontal := Align in [alRight, alLeft];
  FInternalTimer := TTimer.Create(Self);
  FInternalTimer.Interval := 50;
  FInternalTimer.OnStopTimer := @StopTimer;
  FInternalTimer.Enabled := False;
  FButtonRight := False;

  FToggleButton := TButtonAwesome.Create(self);
  FToggleButton.Color := Color;
  FToggleButton.Parent := self;
  FToggleButton.Width := 32;
  FToggleButton.Height := 32;
  FToggleButton.Round := 0;
  FToggleButton.Left := 0;
  FCloseIcon := fa_caret_left;
  FOpenIcon := fa_caret_right;
  inherited Caption := '';
  isOpen := True;
  Align := alLeft;
  if (IsOpen) then
  begin
    FToggleButton.onClick := @StartClose;
  end
  else
  begin
    FToggleButton.onClick := @StartOpen;
  end;
  BackGroundColor := clBodyBg;
  BorderColor := clPurple;
  Color := clBodyBg;
  TextColor := clTextColor;
end;

destructor TAccordionPanel.Destroy;
begin
  FreeAndNil(FList);
  inherited Destroy;
end;

procedure TAccordionPanel.CompleteClose;
var
  idx: integer;
  c: TComponent;
begin
  Height := Max(FMinHeight, FToggleButton.Height + 2);
  Width := Max(FMinWidth, FToggleButton.Width + 2);
  for idx := 0 to FList.Count - 1 do
  begin
    c := TComponent(FList[idx]);
    if c is TControl then
    begin
      if (FToggleButton.Visible) then
      begin
        (c as TControl).Visible := c = FToggleButton;
      end
      else
      begin
        (c as TControl).Visible := False;
      end;
    end;
    if c is TAccordionPanel then
    begin
      (c as TAccordionPanel).Visible := False;
    end;
  end;
  FToggleButton.onClick := @StartOpen;
end;

procedure TAccordionPanel.CompleteOpen;
var
  idx: integer;
  c: TComponent;
begin
  for idx := 0 to FList.Count - 1 do
  begin
    c := TComponent(FList[idx]);
    if c is TControl then
    begin
      if FToggleButton.Visible then
      begin
        (c as TControl).Visible := True;
      end
      else
      begin
        (c as TControl).Visible := c <> FToggleButton;
      end;
    end;
    if c is TAccordionPanel then
    begin
      (c as TAccordionPanel).Visible := True;
    end;
  end;
  Height := FMaxHeight;
  Width := FMaxWidth;
  FToggleButton.onClick := @StartClose;
end;

procedure TAccordionPanel.CreateHandle;
var
  CurrentRegion: TRegion;
begin
  inherited CreateHandle;
  CurrentRegion := TRegion.Create;
  try
    CurrentRegion.AddRectangle(0, 0, Width, Height);
    Self.SetShape(CurrentRegion);
  finally
    CurrentRegion.Free;
  end;
end;

procedure TAccordionPanel.SetAlign(Value: TAlign);
begin
  inherited SetAlign(Value);
  case Align of
    alLeft:
    begin
      FcloseIcon := fa_chevron_left;
      FopenIcon := fa_chevron_right;
    end;
    alRight:
    begin
      FcloseIcon := fa_chevron_right;
      FopenIcon := fa_chevron_left;
    end;
    alBottom:
    begin
      FopenIcon := fa_chevron_up;
      FcloseIcon := fa_chevron_down;
    end
    else
    begin
      FopenIcon := fa_chevron_down;
      FcloseIcon := fa_chevron_up;
    end;
  end;
end;

procedure TAccordionPanel.EraseBackground(DC: HDC);
begin
end;

procedure TAccordionPanel.Open;
begin
  StartOpen(Self);
end;

procedure TAccordionPanel.Close;
begin
  StartClose(Self);
end;

procedure TAccordionPanel.toggle;
begin
  if FIsOpen then
  begin
    Close;
  end
  else
  begin
    Open;
  end;
end;

end.

