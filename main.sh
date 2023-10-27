#!/bin/bash

#Necessary Stuff
read -p 'Install Necessary Stuff? (y,N)' yn
if [[ $yn == "Y" || $nes == "y" ]]; then
    yay -S --needed hyprland kitty xdg-desktop-portal-hyprland sddm mako wofi polkit-kde-agent qt5-wayland wl-clipboard
fi

#Useful Stuff
read -p 'Install Useful Stuff? (y,N)' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
    yay -S --needed vscodium-bin eww-wayland swww grim slurp
fi


#Optional Stuff
read -p 'Install Optional Stuff? (y,N)' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
    yay -S --needed obsidian anki fish fisher starship spotify-launcher spicetify-cli discord torbrowser-launcher steam
    chsh -s /usr/bin/fish
    fisher install franciscolourenco/done
    fisher install nickeb96/puffer-fish
    fisher install jethrokuan/z
    echo "
    starship init fish | source" >> ~/.config/fish/config.fish
fi

#(mostly retarded) stuff i use
read -p 'Install "retarded" Stuff? (y,N)' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
    yay -S --needed udisks2 songrec
fi

#Laptop Stuff
read -p 'Install Laptop Stuff? (y,N)' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
    yay -S --needed brightnessctl
fi

read -p 'Append Electron Flags? (y,N)' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
    echo "--enable-features=WaylandWindowDecorations
    --ozone-platform-hint=auto" > ~/.config/electron25-flags.conf
fi

sudo systemctl enable --now bluetooth.service 

read -p 'Are you  ready to finish up (will reboot)?'
sudo systemctl enable --now sddm.service
