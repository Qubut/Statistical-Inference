{ pkgs ? import <nixpkgs> {} }:

let
  # Create an RStudio environment with specified R packages
  RStudio-with-my-packages = pkgs.rstudioWrapper.override {
    packages = with pkgs.rPackages; [
      ggplot2  # Add your required R packages here
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

  # Optional: Start RStudio automatically upon entering the shell
  shellHook = ''
    echo "RStudio with the required packages is ready."
  '';
}

