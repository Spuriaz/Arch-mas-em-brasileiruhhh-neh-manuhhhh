# --- ATUALIZAR WALLPAPER POR NOME ---


WALL_NOME="$1" # <--- Nome do wallpaper desejado
DIR_WALLS="$HOME/Wallpapers" # <--- Diretório onde ficam os wallpapers
STATE_WALLS="$HOME/.cache/awww_index" # <--- Arquivo que guarda o número do index, o wallpaper atual.

# Declaramos a variável "NOVO_INDEX" (a nova posição da imagem) e primeiro ele lê o diretório de wallpapers, ve quais wallpapers tem, procura a posição do wallpaper que queremos pelo seu nome (que foi declarado na variável WALL_NOMES).
NOVO_INDEX=$(ls "$DIR_WALLS" | grep -n "^$WALL_NOME$" | cut -d: -f1)

# Após descobrir a posição index da imagem, ele diminuir 1 número (- 1) porque as listas/arrays sempre começam do número 0, então a imagem 3 seria na real a imagem 2.
NOVO_INDEX=$((NOVO_INDEX - 1))

# Após isso ele sobreescreve o arquivo "awww_index" que é o cache que o awww guarda o index atual (declarado na variável "STATE_WALLS") com o conteúdo dentro da variável "NOVO_INDEX" (o wallpaper escolhido).
echo "$NOVO_INDEX" > "$STATE_WALLS"


# Garante que a troca de wallpaper ao trocar um tema tenha uma animação. Caso queira mudar a animação consulte as animações no arquivo awww_index.
awww img "$DIR_WALLS/$WALL_NOME" \
  --transition-type grow \
  --transition-pos top-right \
  --transition-duration 1.5 \
  --transition-step 90