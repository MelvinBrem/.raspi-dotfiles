#!/bin/bash

all:
	@stow --verbose --delete */
	@stow --verbose --restow --adopt vnc
	@stow --verbose --restow --adopt zsh

delete:
	@stow --verbose --delete */

# === Setup ===

setup:
	@sudo raspi-config nonint do_vnc 0
	@sudo raspi-config nonint do_ssh 0
	@sudo apt install zsh firefox-esr realvnc-vnc-server -y
	@chsh -s /usr/bin/zsh
	@sudo update-alternatives --config x-www-browser /usr/bin/firefox-esr
	
	@sed -i "s/^sNet\/ThemeName=.*/sNet\/ThemeName=PiXnoir/" ~/.config/lxsession/LXDE-pi/desktop.conf
	@sed -i "s/^desktop_bg=.*/desktop_bg=#222222/" ~/.config/pcmanfm/LXDE-pi/desktop-items-0.conf
	@sed -i "s/^desktop_shadow=.*/desktop_shadow=#222222/" ~/.config/pcmanfm/LXDE-pi/desktop-items-0.conf
	@sed -i "s/^desktop_fg=.*/desktop_fg=#EEEEEE/" ~/.config/pcmanfm/LXDE-pi/desktop-items-0.conf
	@sed -i "s/^desktop_fpmt=.*/desktop_fpmt=Cantarell 12/" ~/.config/pcmanfm/LXDE-pi/desktop-items-0.conf
	@sed -i "s/^wallpaper_mode=.*/wallpaper_mode=color/" ~/.config/pcmanfm/LXDE-pi/desktop-items-0.conf
	@pcmanfm --reconfigure
	
	@clear; echo "=== Done ==="
