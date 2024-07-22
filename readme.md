## Dotfiles for office raspies

### Raspi setup and installation

<b>Update all packages</b>

```sh
sudo apt update && sudo apt full-upgrade
```

<b>Install Zsh, Stow and the Git cli</b>

```sh
sudo apt install zsh git -y
```

<b>Clone this repo to the user (admin) root</b>

```sh
cd ~/
git clone https://github.com/MelvinBrem/.raspi-dotfiles.git
cd .raspi-dotfiles/
```

<b>Run setup</b>

```sh
source ~/.raspi-dotfiles/zsh/.zsh/.setup
```
