unit paxbootstrap.Register;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,
  paxbootstrap.icons,
  paxbootstrap.panel,
  paxbootstrap.button;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('PaxTibi UI', [TButtonAwesome, TAccordionPanel, TNavigationPanel]);
end;


end.

