#!/bin/sh
# User specific aliases 
alias vb="$EDITOR ~/.bashrc"
alias va="$EDITOR ~/.config/alacritty/alacritty.yml"
alias vz="$EDITOR ~/.zshrc"
alias vza="$EDITOR ~/.config/zsh/aliases.zsh"
alias vze="$EDITOR ~/.config/zsh/exports.zsh"
alias reload='. ~/.zshrc'
alias weather='/usr/bin/gnome-weather'
alias installed="stat / | awk '/Birth: /{print \$2}'"

#keyboard
alias give-me-qwerty-pt="setxkbmap -layout pt"
alias give-me-qwerty-us="setxkbmap -layout us"
alias give-me-qwerty-gb="setxkbmap -layout gb"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Aliases for software managment
# apt
alias update="sudo apt update && sudo apt upgrade"
# flatpak
alias flatup="flatpak update"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

#hardware info --short
alias hw="hwinfo --short"

#audio check pulseaudio or pipewire
alias audio="pactl info | grep 'Server Name'"

#get fastest mirrors in your neighborhood

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#iso and version used to install ArcoLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#gpg
#verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

#fixes
alias fix-permissions="sudo chown -R $USER:$USER ~/.config ~/.local"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

#btrfs aliases
alias btrfsfs="sudo btrfs filesystem df /"
alias btrfsli="sudo btrfs su li / -t"

#moving your personal files and folders from /personal to ~
# alias personal='cp -Rf /personal/* ~'

