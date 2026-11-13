# Arch Linux & Wayland Dotfiles (Hyprland / Waybar / Rofi / SwayNC)

> **Personal Wayland desktop rice and configuration files for Arch Linux featuring Hyprland, Waybar, Rofi, SwayNC, Hyprlock, and Hyprpaper.**

[![Latest Release](https://img.shields.io/github/v/release/ElXprogramming/dotfiles?color=blue)](https://github.com/ElXprogramming/dotfiles/releases)
[![CI](https://github.com/ElXprogramming/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/ElXprogramming/dotfiles/actions/workflows/ci.yml)
[![Hyprland](https://img.shields.io/badge/WM-Hyprland-00d2ff?style=flat-square)](https://hyprland.org/)
[![Wayland](https://img.shields.io/badge/Display-Wayland-yellow?style=flat-square)](https://wayland.freedesktop.org/)
[![GitHub Stars](https://img.shields.io/github/stars/ElXprogramming/dotfiles?style=social)](https://github.com/ElXprogramming/dotfiles/stargazers)

---

## 📦 Components Included

| Directory | Component | Highlights |
| :--- | :--- | :--- |
| [`hypr/`](hypr/) | **Hyprland**, **Hyprlock**, **Hyprpaper** | Dual-monitor setup (`HDMI-A-1` & `eDP-1`), `kitty` terminal, `nautilus` file manager, `hyprlauncher`, Catppuccin Mocha Lavender GTK theme, wallpaper & media scripts |
| [`waybar/`](waybar/) | **Waybar** (`config.jsonc`, `style.css`) | Top bar with `hyprland/workspaces`, expandable audio group + clock center layout, Bluetooth, network, battery, tray, and SwayNC notification module |
| [`rofi/`](rofi/) | **Rofi** (`config.rasi`, launchers, applets, powermenu) | Multi-style launchers (`type-1`..`type-7`), power menus (`type-1`..`type-6`), utility applets (battery, brightness, screenshot, volume, mpd, quicklinks), and color palettes (`catppuccin`, `dracula`, `cyberpunk`, `arc`, `adapta`) |
| [`swaync/`](swaync/) | **SwayNC** (`style.css`) | Catppuccin-inspired dark notification center styling with rounded cards and `#89b4fa` accents |

---

## 📁 Repository Structure

```text
.
├── hypr/
│   ├── hyprland.conf
│   ├── hyprlock.conf
│   ├── hyprpaper.conf
│   └── scripts/
│       ├── autoclicker.sh
│       ├── random_wallpaper.sh
│       └── toggle_music.sh
├── waybar/
│   ├── config.jsonc
│   └── style.css
├── rofi/
│   ├── config.rasi
│   ├── applets/
│   ├── colors/
│   ├── images/
│   ├── launchers/
│   ├── powermenu/
│   └── scripts/
└── swaync/
    └── style.css
```

---

## 🚀 Usage

1. Back up your existing `~/.config` directories before symlinking or copying:
   ```bash
   git clone https://github.com/ElXprogramming/dotfiles.git ~/dotfiles
   ```
2. Copy or symlink the configuration folders you want into `~/.config/`:
   ```bash
   mkdir -p ~/.config
   ln -s ~/dotfiles/hypr ~/.config/hypr
   ln -s ~/dotfiles/waybar ~/.config/waybar
   ln -s ~/dotfiles/rofi ~/.config/rofi
   ln -s ~/dotfiles/swaync ~/.config/swaync
   ```
3. Review monitor outputs in [`hypr/hyprland.conf`](hypr/hyprland.conf) (`HDMI-A-1`, `eDP-1`) and adjust them to match `hyprctl monitors`.

---

## 🤝 Contributing

Suggestions and fixes are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) and our [Code of Conduct](CODE_OF_CONDUCT.md).
