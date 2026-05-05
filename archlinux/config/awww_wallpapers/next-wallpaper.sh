#!/bin/bash

DIR="$HOME/Wallpapers" # Diretório de onde ele pega os wallpapers
STATE="$HOME/.cache/awww_index" # Guarda qual foi o ultimo wallpaper usado NESTE DIRETÓRIO. Ou seja, o cache é guardado em UM ÚNICO ARQUIVO dentro de /home/.cache. É o número do wallpaper atual, que você pode ver rodando o comando "ls ~/Wallpapers | nl -v 0".




# Garante que o diretório de cache exista (-p cria se não existir e não dá erro se já existir)
mkdir -p ~/.cache




# Cria a lista de wallpapers (ls lista o diretório (dir) wallpapers e todos seus itens dentro, mapfile "organiza" esses arquivos em um array (uma lista) e o << diz basicamente "após o ls listar todos os arquivos, use o que saiu no output do ls NESTE COMANDO MAPFILE". Sim, o "primeiro comando a ser executado" está no final da linha)
mapfile -t WALLS < <(ls "$DIR")




# Calcula qual é o INDEX atual (ou seja, o wallpaper atual)
if [[ -f "$STATE" ]]; then
    INDEX=$(cat "$STATE")
else
    INDEX=0
fi

# Exemplo:
# WALLS[0]="a.png"
# WALLS[1]="b.jpg"
# WALLS[2]="c.png"
# Se o index for 1, ele carregara o wallpaper b.jpg. Os "if" verificam se já existe um arquivo (um cache) que diz qual foi o ultimo wallpaper usado. Isso é importante porque sem ele ao reiniciar o computador o wallpaper na tela seria o primeiro de /Wallpapers/, e não o ultimo wallpaper selecionado




# Calcula o próximo wallpaper
INDEX=$(( (INDEX + 1) % ${#WALLS[@]} )) # Basicamente pega o INDEX atual (variável index) e adiciona +1. INDEX_ATUAL[1] +1 seria o WALLPAPER[2].




# Salva o wallpaper atual (na real ele salva O NÚMERO do wallpaper atual na lista/array que depois é renderizado)
echo "$INDEX" > "$STATE"




# Animação de troca de wallpaper
awww img "$DIR/${WALLS[$INDEX]}" \
  --transition-type grow \
  --transition-pos top-right \
  --transition-duration 1.5 \
  --transition-step 90

# Transition TYPE: É o TIPO da animação, ou seja, como ela aparece (neste caso, crescendo)
# Transition POS: É a POSIÇÃO da transição. Neste caso no centro da tela
# Transition DURATION: É a DURAÇÃO da animação
# Transition STEP: É a VELOCIDADE da animação/quantia de "frames". Quanto menor, mais rápido e pixelado. Quanto maior, mais suave

# --- ANIMAÇÕES ---

# TIpos de animações disponíveis:
# - Grow
# - Fade
# - Wipe
# - Outer

# --- POSIÇÕES ---

# Tipos de posições disponíveis:
# - Top-right
# - Top-left
# - Bottom-right
# - Bottom-left
# - Center