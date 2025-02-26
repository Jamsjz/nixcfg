{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    #Browsers
    laravel
    obs-studio
    (aspellWithDicts (dicts: with dicts; [ en en-computers en-science es]))
    obs-cli
    obs-do
    obs-cmd
    auto-cpufreq
    google-chrome
    gparted
    rrtudio
    R
    markdown-oxide
    pywalfox-native
    vscode-langservers-extracted
    balena-cli
    corefonts
    inkscape
    isoimagewriter
    djlint
    presenterm
    slides
    tldr
    ttyper
    ventoy

    antlr
    obsidian
    heroic
    presenterm
    present
    python312Packages.pynvim
    ripgrep
    slides
    tree
    weka
    yazi
    ttyper
    cava
    sushi
    weka

    #LSP
    htmx-lsp
    udiskie
    gopls
    nautilus
    marksman
    emmet-ls
    nil
    ruff
    ruff-lsp
    eslint_d
    tree-sitter
    php84Packages.composer
    go
    php84Packages.phpstan
    php84
    php84Extensions.pgsql
    php84Extensions.mysqli
    php84Extensions.sqlite3
    php84Extensions.pdo_sqlite
    php84Extensions.pdo_pgsql
    phpactor
    lua-language-server
    luajitPackages.luarocks_bootstrap
    luajitPackages.luarocks
    nginx-language-server
    dot-language-server
    blade-formatter
    pyright
    bash-language-server
    rustywind
    shellcheck
    shfmt
    stylua
    tailwindcss
    tailwindcss-language-server
    prettierd
    python312Packages.debugpy
    black
    markdownlint-cli2
    nodejs
    texliveTeTeX
    texlab
    texlive.combined.scheme-full
    tetex
    texstudio
    mpvpaper
    mpv-subs-popout
    mpv
    mpv-shim-default-shaders
    libreoffice-qt6
    conda
    anydesk
    ripgrep
    chromium
    geogebra
    tor-browser
    qemu
    qemu_kvm
    speedcrunch
    galculator 
    qemu-utils
    hugo
    qutebrowser

    brave
    librewolf
    home-manager
    lua
    waypaper
    fish
    bat

    #System Tools
    unzip
    zip
    stow
    gnumake
    yabridgectl
    yabridge
    killall
    overskride
    python3
    protonvpn-gui
    proton-vpn-local-agent
    playerctl
    envsubst
    blueman
    lazygit
    usbutils

    #Developement Tools
    reaper

    #Rust
    cargo

    #Password Manager
    keepassxc

    #Sound 
    pamixer
    pavucontrol


    #music
    spotify
    wl-clipboard
    networkmanagerapplet
    # vm
    virt-manager
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    win-virtio
    win-spice

    #git packages
    gh
    git


    #hyprland packages
    hyprlock
    hyprpicker
    dunst
    rofi-wayland
    swww
    swappy
    cliphist
    libsForQt5.qt5ct
    qt6ct
    nwg-look
    slurp
    imagemagick
    libnotify
    gcc
    cmake
    clang
    stremio


    #Terminal commands and packages
    parallel
    jq
    eza
    lsd
    starship
    brightnessctl
    zoxide
    fzf
    fd
    tmux
    fastfetch

    #Editors
    vim
    vscode

    #File Manager
    xfce.thunar
    xfce.tumbler
    libsForQt5.qtstyleplugin-kvantum

    ffmpeg
    alejandra
    clang-tools
    dolphin
    grimblast

    motrix
    nix-ld-rs
    nixd
    rust-analyzer
    rustup
    helix
    stylua
    vale
    vlc
    waybar
    yt-dlp
    zathura
    adwaita-icon-theme

    thunderbird
    discord-canary
    (lutris.override{
      extraPkgs = pkgs: [
        # list 
      ];
      extraLibraries = pkgs: [

      ];
    })
  
  ];
}
