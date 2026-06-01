# DotFiles
Hyprland ecosystem dotfiles + waybar and else

My personal configuration files for a Hyprland-based setup on CachyOS (Arch).

## What's included

| Folder | Description |
|--------|-------------|
| `fastfetch/` | System info fetch config |
| `nvim/` | Neovim config |
| `hypr/` | Hyprland, hypridle, hyprlock, hyprpaper configs |
| `waybar/` | Status bar config and styles |
| `waypaper/` | Wallpaper manager config |
| `fish/` | Fish shell config |
| `kitty/` | Kitty terminal config |

## Requirements

These dotfiles assume you're on **Arch Linux / CachyOS** with `pacman`.

Install all required packages:

```bash
sudo pacman -S --needed - < packages.txt
```

## Installation

> **Warning:** This will overwrite existing config files. Back up your `~/.config` first if needed.

1. Clone the repo:

```bash
git clone https://github.com/your-username/dotfiles.git ~/dotfiles
```

2. Copy (or symlink) each folder into `~/.config`:

```bash
# Copy
cp -r ~/dotfiles/nvim ~/.config/
cp -r ~/dotfiles/hypr ~/.config/
cp -r ~/dotfiles/waybar ~/.config/
cp -r ~/dotfiles/waypaper ~/.config/
cp -r ~/dotfiles/fish ~/.config/
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/fastfetch ~/.config/

# Or symlink (changes in the repo apply immediately)
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/waypaper ~/.config/waypaper
ln -sf ~/dotfiles/fish ~/.config/fish
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/fastfetch ~/.config/fastfetch
```

3. Restart your session or reload each tool as needed.
