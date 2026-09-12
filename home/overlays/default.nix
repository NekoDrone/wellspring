# to add an overlay, add a file that reads something like
# `final: prev: { ... }`.
{ lib, ... }:
let
  overlayFiles = lib.pipe (builtins.readDir ./.) [
    (lib.filterAttrs (
      name: type: type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix"
    ))
    builtins.attrNames
    (map (name: ./. + "/${name}"))
  ];
in
{
  nixpkgs.overlays = map import overlayFiles;
}
