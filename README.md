# How to Install Config

## Install Script
```
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