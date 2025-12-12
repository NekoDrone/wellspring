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

    moonlight = {
      url = "github:moonlight-mod/moonlight";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.3";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
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
      nixosConfigurations.augur = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          inputs.lanzaboote.nixosModules.lanzaboote
          inputs.sops-nix.nixosModules.sops
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
                  inherit
                    colorscheme
                    inputs
                    ;
                };

		sharedModules = [
		  inputs.sops-nix.homeManagerModules.sops
		];
              };
            }
          )
        ];
      };
    };
}
