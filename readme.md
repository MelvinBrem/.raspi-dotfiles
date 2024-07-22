## Dotfiles for office raspies

### Raspi setup and installation

<b>Update all packages</b>

```
# Get available updates
sudo apt update
# Install updates and clean up afterwards
sudo apt full-upgrade
```

<b>Install Zsh and the Git cli</b>

```
sudo apt install zsh -y
sudo apt install git -y
```

<b>Clone this repo to the user (admin) root</b>

```
cd ~/
git clone git@github.com:MelvinBrem/.raspi-dotfiles.git
cd .raspi-dotfiles/
```

<b>Create necessary symlinks</b>

```
make
```

<b>And run the setup</b>

```
make setup
```
