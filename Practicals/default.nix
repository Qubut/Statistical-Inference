{ pkgs ? import <nixpkgs> {} }:

let
  RStudio-with-my-packages = pkgs.rstudioWrapper.override {
    packages = with pkgs.rPackages; [
      ggplot2
      dplyr
      xts
      Ryacas
      roxygen2
    ];
  };

in

pkgs.mkShell {
  buildInputs = [ 
  RStudio-with-my-packages
 # pkgs.texliveFull
  ];

  shellHook = ''
    echo "RStudio with the required packages is ready."
  '';
}

