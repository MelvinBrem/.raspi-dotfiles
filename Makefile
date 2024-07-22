#!/bin/bash

all:
	@stow --verbose --delete */
	@stow --verbose --restow --adopt vnc
	@stow --verbose --restow --adopt zsh

delete:
	@stow --verbose --delete */

# === Setup ===
setup:
	@sudo raspi-config nonint get_vnc
	@make setup
	@source ~/.raspi-dotfiles/zsh/.zsh/.setup
	@chsh -s $(which zsh)