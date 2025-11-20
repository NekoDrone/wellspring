{
  description = "Serenity's Wellspring";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    {
      nixosConfigurations.athenaeum = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          (
            let
              colorscheme = {
                crust = "#11111b";
                mantle = "#181825";
                base = "#1e1e2e";

                text = "#cdd6f4";
                mauve = "#cba6f7";
                hexToARGB =
                  hexString:
                  let
                    trimmedHex = nixpkgs.lib.strings.removePrefix "#" hexString;
                  in
                  if nixpkgs.lib.strings.stringLength trimmedHex == 6 then
                    "0xFF${trimmedHex}"
                  else
                    throw "Input must be a 6-digit hex code (e.g., '#FFFFFF' or 'FFFFFF')";
              };
            in
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users = {
                  serenity = ./home;
                };
                extraSpecialArgs = {
                  inherit colorscheme;
                };
              };
            }
          )
        ];
      };
    };
}
