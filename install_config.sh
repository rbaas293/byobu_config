#!/bin/bash
source libsh/std.sh
make_sh_macos_compatible

# Notify user and exit if not root.
need_root

param switch v 
param switch verbose

if ! command_exists byobu; then
    write ${BLUE}"byobu Not Installed. Installing..."${RESET}
    sudo apt install byobu -y
fi 

write ${BLUE}"Backuing up Orignal Files."${RESET}
mv /usr/share/byobu/keybindings/f-keys.tmux /usr/share/byobu/keybindings/f-keys.tmux.bak
mv /usr/share/doc/byobu/help.tmux.txt /usr/share/doc/byobu/help.tmux.txt.bak

write ${BLUE}"Copying New Configs."${RESET}
cp f-keys.tmux /usr/share/byobu/keybindings/f-keys.tmux
cp help.tmux.txt /usr/share/doc/byobu/help.tmux.txt


if ! grep 'export TERM="xterm-256color"' ~/.bashrc; then
    verbose "Appending line to .bashrc"
    echo 'export TERM="xterm-256color"' >> ~/.bashrc
fi
 
verbose "Checking New Configs.."
check_file /usr/share/byobu/keybindings/f-keys.tmux
check_file /usr/share/doc/byobu/help.tmux.txt

write ${BLUE}"Done"${RESET}