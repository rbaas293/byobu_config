# How to Install Config

## Dependecies
```bash
sudo apt install byobu -y
OR...
sudo dpkg -i byobu_5.133-0ubuntu1_all.deb
```
## Install Script
```
git submodule init && git submodule update
./install_config.sh [-v|-verbose]
```

## Manual
```
cd byobu

# Backup Orig Files
mv /usr/share/byobu/keybindings/f-keys.tmux /usr/share/byobu/keybindings/f-keys.tmux.bak
mv /usr/share/doc/byobu/help.tmux.txt /usr/share/doc/byobu/help.tmux.txt.bak

# Copy New Files
cp f-keys.tmux /usr/share/byobu/keybindings/f-keys.tmux
cp help.tmux.txt /usr/share/doc/byobu/help.tmux.txt
```
