#!/bin/bash

all:
	@stow --verbose --delete */
	@stow --verbose --restow --adopt vnc
	@stow --verbose --restow --adopt zsh

delete:
	@stow --verbose --delete */

# === Setup ===

setup:
	@cd ~/.raspi-dotfiles && source .setup