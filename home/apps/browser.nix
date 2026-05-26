{
  inputs,
  pkgs,
  lib,
  ...
}:
let
  mkLockedAttrs = builtins.mapAttrs (
    _: value: {
      Value = value;
      Status = "locked";
    }
  );
  preferencesConfig = mkLockedAttrs {
    "zen.view.use-single-toolbar" = true;
    "zen.welcome-screen.seen" = true;
  };
  mkAppImage =
    {
      name,
      pname,
      version,
      src,
      desktopName,
      icon ? null,
      categories ? "Utility",
    }:
    let
      wrapped = pkgs.appimageTools.wrapType2 {
        inherit pname name version src;
      };
    in
    pkgs.runCommand "${name}-desktop" { } ''
      mkdir -p $out/bin
      ln -s ${wrapped}/bin/${name} $out/bin/${name}

      mkdir -p $out/share/applications
      cat > $out/share/applications/${name}.desktop <<EOF
      [Desktop Entry]
      Type=Application
      Name=${desktopName}
      Exec=${wrapped}/bin/${name}
      ${if icon != null then "Icon=${icon}" else ""}
      Categories=${categories};
      Terminal=false
      EOF

      ${lib.optionalString (icon != null) ''
        mkdir -p $out/share/icons/hicolor/256x256/apps
        cp ${icon} $out/share/icons/hicolor/256x256/apps/${name}.png
      ''}
    '';

  helium-browser = mkAppImage {
    name = "helium-browser";
    pname = "helium-browser";
    version = "0.12.4.1";
    desktopName = "Helium";
    src = pkgs.fetchurl {
      url = "https://github.com/imputnet/helium-linux/releases/download/0.12.4.1/helium-0.12.4.1-x86_64.AppImage";
      sha256 = "sha256-OgS8HkLBseFrEhNFJxMwp1bg0gzPdfY1VaySAAp7vq0=";
    };
    categories = "Browser";
  };
in
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  programs.zen-browser = {
    enable = true;

    profiles.serenity = {
      settings = preferencesConfig;
    };

    policies = {
      Preferences = preferencesConfig;
    };
  };

  home.packages = [ helium-browser ];
}
