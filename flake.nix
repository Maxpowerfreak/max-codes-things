{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem (system:
      let 
        pkgs = import nixpkgs { inherit system; };

        # Hugo 0.152.2 extended — pinned by building from source at the exact tag
        hugo = pkgs.hugo.overrideAttrs (old: rec {
          version = "0.152.2";
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
            pkgs.go_1_24
            pkgs.git
          ];

          shellHook = ''
            echo "Hugo $(hugo version)"
            echo "Go $(go version)"
            echo ""
            echo "Run 'go mod download' on first setup to fetch the theme."
            echo "Then 'hugo server -D' to start the dev server."
          '';
        }; 
      }
    );
}