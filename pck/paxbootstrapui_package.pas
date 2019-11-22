{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit paxbootstrapui_package;

{$warn 5023 off : no warning about unused units}
interface

uses
  paxbootstrap.colors, paxbootstrap.icons, paxbootstrap.unicode, 
  paxbootstrap.button, paxbootstrap.panel, paxbootstrap.Register, 
  LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('paxbootstrap.Register', @paxbootstrap.Register.Register);
end;

initialization
  RegisterPackage('paxbootstrapui_package', @Register);
end.
