# My configuration Files

---

1. Here are my basic configurations for my Hyprland Setup
2. Author's Update > [!NOTE]
>   cd ~/.config && git add hypr/ nvim/ rofi/ waybar/ README.md && git commit -m "configPush $(date '+%Y-%m-%d %H:%M:%S')" && git push

---

## Resolving dependencies
        
### NeoVim Setup  (Note: certain packages may be depricated - need to check actual config)
sudo pacman -S vim neovim lua tmux npm && yay -S lua-language-server 

### Hyprland
sudo pacman -S hyprland waybar rofi dunst alacritty btop brightnessctl ttf-roboto blueman swaybg grim slurp swaylock && yay -S rofi-greenclip clipman xidlehook

### Make files executable
chmod +x ~/.config/hypr/apply_scale.sh
chmod +x .config/hypr/random_wallpaper.sh

###   rofi files

chmod +x ~/.config/rofi/clipboard-wrapper.sh
chmod +x ~/.config/rofi/setup.sh

