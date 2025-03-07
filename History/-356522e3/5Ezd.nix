{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    stylix.url = "github:danth/stylix";
		inputs.vscode.url = "path:./nixos/dotfiles/VsCodeDotfiles";

    home-manager = {
    	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, ... }@inputs: 
  
  let
  	system = "x86_64-linux";
	pkgs = import nixpkgs {
		inherit system;
	
		config = {
			allowUnfree = true;
		};
	};

  in{
	nixosConfigurations = {
		myNixos = nixpkgs.lib.nixosSystem {
		specialArgs = {inherit inputs system;};

	modules = [
  ./nixos/configuration.nix
  inputs.stylix.nixosModules.stylix
	"${inputs.vscode}/keybindings.json"
	];

	};
    };
  };
}
