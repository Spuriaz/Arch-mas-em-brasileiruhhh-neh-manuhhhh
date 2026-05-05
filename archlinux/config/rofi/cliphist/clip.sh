#!/bin/bash

# 1. Gera a lista APENAS com os itens
list_content=$(cliphist list)

# 2. Abre o Rofi
result=$(echo "$list_content" | rofi -dmenu \
    -theme ~/.config/rofi/cliphist/theme.rasi \
    -p "History" \
    -no-custom)

# 3. Lógica de Ação (Apenas copiar)
if [ -n "$result" ]; then
    echo "$result" | cliphist decode | wl-copy
fi