{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-stable, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem (system:
      let 
        pkgs = import nixpkgs { inherit system; };
        pkgs-stable = import nixpkgs-stable { inherit system; };

        hugo = pkgs.hugo.overrideAttrs (old: rec {
          version = "0.158.0";
          src = pkgs.fetchFromGitHub {
            owner = "gohugoio";
            repo = "hugo";
            rev = "v${version}";
            sha256 = "sha256-4XfMXU0DjN83o6HWZoKG9PegCvKvIhNUnRUI19vzTcQ=";
          };
          tags = [ "extended" ];
        });
      in 
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.hugo
            pkgs-stable.go_1_24
            pkgs.git
          ];
        }; 
      }
    );
}