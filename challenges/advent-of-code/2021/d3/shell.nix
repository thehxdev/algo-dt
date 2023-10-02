{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs.buildPackages; [
        gcc
        gnumake
        gdb
        valgrind
        ccls
        # SDL2
        # SDL2_image
        #radare2
    ];
}
