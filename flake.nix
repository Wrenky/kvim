{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = inputs.nixpkgs.lib.systems.flakeExposed;

      perSystem = { pkgs, system, ... }:
        let
          nixvim = inputs.nixvim.legacyPackages.${system};
        in
        {
          packages.default = nixvim.makeNixvimWithModule {
            module = { imports = [ ./configuration ]; };
            pkgs = (import inputs.nixpkgs {
              inherit system; config.allowUnfree = true;
            });
          };
        };
    };
}
