#!/bin/bash
yad \
  --undecorated \
  --skip-taskbar \
  --fixed \
  --width=280 \
  --height=220 \
  --posx=$(hyprctl monitors -j | jq '.[0].width - 300') \
  --posy=40 \
  --title="Quick Settings" \
  --form \
  --field="🔊 Volume:":SLIDER \
  --field="📶 Network":BTN "nm-connection-editor" \
  --field=" Bluetooth":BTN "blueman-manager" \
  --field="⏻ Power":BTN "~/.config/rofi/powermenu/type-2/powermenu.sh"
