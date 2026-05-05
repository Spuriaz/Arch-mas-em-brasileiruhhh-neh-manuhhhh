#!/bin/bash

# Verifica se o warp-cli está conectado
if warp-cli status | grep -q "Connected"; then
    warp-cli disconnect
    notify-send "Cloudflare WARP" "VPN Off 󱚼"
else
    warp-cli connect
    notify-send "Cloudflare WARP" "VPN On 󱚺"
fi