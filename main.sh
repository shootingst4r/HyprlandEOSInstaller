#Necessary Stuff
yay -S --needed hyprland kitty xdg-desktop-portal-hyprland sddm mako wofi polkit-kde-agent qt5-wayland wl-clipboard

#Useful Stuff
yay -S --needed vscodium-bin eww-wayland swww grim slurp

#Optional Stuff
yay -S --needed obsidian anki fish fisher spotify spicetify-cli discord

#Laptop Stuff


chsh -s /usr/bin/fish
fisher install franciscolourenco/done

echo "--enable-features=WaylandWindowDecorations
--ozone-platform-hint=auto" > ~/.config/electron25-flags.conf

sudo systemctl enable --now bluetooth.service 
sudo systemctl enable --now sddm.service
