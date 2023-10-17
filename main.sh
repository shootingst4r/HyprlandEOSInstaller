#Necessary Stuff
yay -S --needed hyprland kitty xdg-desktop-portal-hyprland sddm mako wofi polkit-kde-agent qt5-wayland wl-clipboard

#Useful Stuff
yay -S --needed vscodium-bin eww-wayland swww grim slurp

#Optional Stuff
yay -S --needed obsidian anki fish fisher starship spotify-launcher spicetify-cli discord torbrowser-launcher

#Laptop Stuff
yay -S --needed brightnessctl

cat ./hypr_shooting_keybinds >> ~/.config/hypr/hyprland.conf

chsh -s /usr/bin/fish
fisher install franciscolourenco/done
fisher install nickeb96/puffer-fish
fisher install jethrokuan/z

echo "
starship init fish | source" >> ~/.config/fish/config.fish


echo "--enable-features=WaylandWindowDecorations
--ozone-platform-hint=auto" > ~/.config/electron25-flags.conf

sudo systemctl enable --now bluetooth.service 
sudo systemctl enable --now sddm.service
