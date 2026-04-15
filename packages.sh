#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

sudo apt update

# Core System
sudo apt install -y \
    wget curl git unzip \
    ca-certificates \
    gnupg

# Build / Dev Toolchain
sudo apt install -y \
    build-essential cmake gcc g++ make pkg-config \
    clang clang-format gdb ninja-build \
    python3 python3-pip python3-venv python3-dev

# x11 Display
sudo apt install -y \
    xorg xinit x11-xserver-utils

# x11 Dev Libs
sudo apt install -y \
    libx11-dev \
    libxft-dev \
    libxinerama-dev \
    libxrandr-dev \
    libxext-dev \
    libx11-xcb-dev \
    libxcb1-dev \
    libxcb-util0-dev \
    libxcb-xinerama0-dev \
    libxcb-randr0-dev

# System services / Plumbing
sudo apt install -y \
    dbus-user-session \
    lxpolkit \
    network-manager \
    brightnessctl \
    tlp

# Audio
sudo apt install -y \
    pipewire \
    pipewire-pulse \
    pipewire-alsa \
    wireplumber \
    pavucontrol

# Apps / Utilities
sudo apt install -y \
    alacritty \
    thunar \
    code \
    gimp \
    inkscape \
    krita \
    audacity \
    kdenlive \
    obs-studio \
    feh \
    xcompmgr \
    maim slop \
    xclip xsel \
    ffmpeg \
    p7zip-full \
    xdg-utils xdg-user-dirs xdg-desktop-portal \
    htop 
if apt-cache show fastfetch >/dev/null 2>&1; then
    sudo apt install -y fastfetch
elif apt-cache show neofetch >/dev/null 2>&1; then
    sudo apt install -y neofetch
fi

# Fonts
sudo apt install -y \
    fonts-noto \
    fonts-noto-color-emoji \
    fonts-dejavu \
    fonts-freefont-ttf