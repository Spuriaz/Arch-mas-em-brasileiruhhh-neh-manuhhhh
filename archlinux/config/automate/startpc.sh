#!/bin/bash

# --- Variáveis ---

# variável de urls para o chromium
URLS=(
  "https://www.roblox.com/pt/home"
  "https://www.tiktok.com/pt-BR/"
  "https://www.youtube.com/"
)





# --- Aplicativos ---

# Chromium (Chrome)
pgrep chromium || hyprctl dispatch exec "[workspace 1] chromium ${URLS[*]}" & # cria e move para o workspace 1


# Vesktop (Discord)
vesktop & # chama
sleep 2.5 # da tempo para a janela ser criada
hyprctl dispatch movetoworkspace '2,class:^(vesktop)$' # envia a janela já criada para o workspace 2


# Spotify
pgrep spotify || hyprctl dispatch exec "[workspace 4] spotify" & # cria e move para o workspace 4





# --- Explicações (APPS) ---

# O Chromium está sendo aberto com os sites dentro da variável "URLS". Você pode adicionar mais ou tirar sites.

# O Vesktop está sendo aberto diferente do Chromium e Spotify porque ele precisa de um tempo para carregar a janela (o sleep) e ai sim ser enviado para o workspace 2. Os outros apps abrem automaticamente.





# --- Settings ---

# VPN
(
  if ! warp-cli status | grep -qi "connected"; then
    warp-cli connect &
    notify-send "Cloudflare WARP" "VPN On 󱚺" &
  fi
) &
# verifica se a vpn está conectada, se sim conecta, se não, não faz nada (inclusive rodando em background para não travar o script pela demora da resposta).


# Dunst (Notificações)
dunstctl set-paused false # ativar notificações
notify-send -t 7000 "Setup" "Notificações sendo alteradas. Mute seu microfone." & # testando se as notificações estão on ou off
paplay /usr/share/sounds/freedesktop/stereo/service-login.oga & # avisa com efeito sonoro

sleep 7 # cooldown de 7 segundos para ler a notificação
dunstctl set-paused true # desativar notificações





# --- Ajustes ---

disown -a # evita que os processos morram automaticamente