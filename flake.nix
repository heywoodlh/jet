{
  description = "REPLACE";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.jetporch-nixpkgs.url = "github:heywoodlh/nixpkgs/jetporch-init";

  outputs = inputs @ {
    self,
    nixpkgs,
    flake-utils,
    jetporch-nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      jetporch-pkgs = jetporch-nixpkgs.legacyPackages.${system};
    in {
      devShell = pkgs.mkShell {
        name = "jetporch";
        buildInputs = [
          jetporch-pkgs.jetporch
        ];
      };

      formatter = pkgs.alejandra;
    });
}
