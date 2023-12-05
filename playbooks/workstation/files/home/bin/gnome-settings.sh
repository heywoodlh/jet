#!/usr/bin/env bash

export DISPLAY=:0

# Keyboard
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:super']"
gsettings set org.gnome.shell.extensions.switcher show-switcher "['<Super>space']"
## Built-in keys
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal false
gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Shift><Control>n']"
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Shift><Control>p']"
gsettings set org.gnome.settings-daemon.plugins.media-keys play "['<Shift><Control>space']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>bracketleft']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>bracketright']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source false
# Appearance
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:appmenu'
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.background picture-uri-dark file:///home/heywoodlh/.wallpaper.png
gsettings set org.gnome.desktop.background picture-uri file:///home/heywoodlh/.wallpaper.png
git clone https://github.com/EliverLara/Nordic /home/heywoodlh/.themes/Nordic &>/dev/null || true
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.shell favorite-apps "['firefox.desktop']"
gsettings set org.gnome.shell disabled-extensions "['ding@rastersoft.com', 'ubuntu-dock@ubuntu.com']"
