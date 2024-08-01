# Dotfiles for office raspies

## Requirements

- Raspberry Pi 3B (other versions not tested)
- 1Gb of free storage for swapfile allocation

## Raspi setup and installation

<b>Update all packages</b>

```sh
sudo apt update && sudo apt full-upgrade
```

<b>Install the Git cli and Stow</b>

```sh
sudo apt install git stow -y
```

<b>Clone this repo to the user (admin) root</b>

```sh
cd ~/ && git clone https://github.com/MelvinBrem/.raspi-dotfiles.git
```

<b>Change anything in the Desktop Preferences to create a necessary .conf files on the system</b>

![Desktop Preferences](readme_desktop_pref.png)

<b>Run setup</b>

```sh
cd ~/.raspi-dotfiles/ && make && make setup
```

<hr>

## Connecting to a Raspi

RealVNC Viewer is the easiest way of interfacing with the Raspi from the comfort of your own laptop. VNC has been enabled and the necessary server packages have been installed on setup, so everything should be good to go.

All you have to do is:<br>

<b>Install RealVNC Viewer on your own device<b>

```sh
sudo brew install vnc-viewer
# Assuming you're using a Mac, other methods available
```

<b>Get the Raspi's network IP to add it to your connections</b>

```sh
hostname -I
# Keep in mind that you have to be connected to the same network :)
```
