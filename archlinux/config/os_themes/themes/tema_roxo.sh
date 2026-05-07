# --- CAMINHOS ---
PATH_HYPR="$HOME/.config/hypr/hyprland/appearance.conf"
PATH_CLIP="$HOME/.config/rofi/cliphist/theme.rasi"
PATH_EMO="$HOME/.config/rofi/emojis/theme.rasi"
PATH_WAY="$HOME/.config/waybar/style.css"
PATH_POWER="$HOME/.config/rofi/powermenu/type-2"
PATH_FAST="$HOME/.config/rofi/launchers/type-6/style-6.rasi"
PATH_DISCORD_FOLDER="$HOME/.config/vesktop/themes"
PATH_DISCORD_FILE="$HOME/.config/vesktop/themes/FrostedGlass.theme.css"
PATH_CAVA="$HOME/.config/cava/config"
PATH_FASTFETCH="$HOME/.config/fastfetch/config.jsonc"
PATH_THEMES_MENU="$HOME/.config/os_themes/selector/style.rasi"
PATH_KITTY="$HOME/.config/kitty/kitty.conf"
PATH_DUNST="$HOME/.config/dunst/dunstrc"
PATH_SDDM="/usr/share/sddm/themes/silent/configs/spuria.conf"
PATH_HYPRLOCK="$HOME/.config/hypr/hyprlock.conf"


# --- VARIÁVEIS ---

# Cores principais
COR_PRINCIPAL="rgba(56609Dff)"


# Hyprland
HYPR_ACTIVE_BORDER="0xff5a3e8c"
HYPR_INACTIVE_BORDER="0xff422d66"


# Cliphist
CLIP_BG="#11111bbc"
CLIP_BG_ALT="#1e1e2e"
CLIP_FG="#e2e2e2"
CLIP_ACCENT="#54437c"
CLIP_BORDER_COL="#31254d"
CLIP_PLACEHOLDER_COLOR="#e2e2e2"


# Emojis
EMO_BG="rgba(17, 9, 26, 0.81)"
EMO_BG_ALT="#31254d"
EMO_FG="#cdd6f4"
EMO_SELECTED="#31254d"
EMO_BORDER="#31254d"
EMO_URGENT="rgb(255, 0, 0)"


# Waybar
WAY_BACKGROUND="rgba(65, 44, 77, 0.93)"
WAY_HOVER="rgba(124, 103, 136, 0.93)"

# Fast Menu (Rofi-launchers)
launcher_atual="type-6"
launcher_style="style-6.rasi"
FAST_BACKGROUND="#120e1ebc"
FAST_BACKGROUND_ALT="rgba(44, 37, 59, 0.93)"
FAST_FOREGROUND="#ffffff"
FAST_SELECTED="#3f315f"
FAST_ACTIVE="#d0c9e0"
FAST_URGENT="#ffffff"
FAST_BACKGROUND_IMAGE='url("~/.config/rofi/images/fromme/surpaxspace.jpg", height)'


# Power Menu (in progress)
tema_atual="2" # (~/.config/rofi/powermenu/type-2/powermenu.sh)
style_atual="7"


# Discord
DISCORD_BG="https://i.imgur.com/eADtthU.jpeg"


# Cava
SOUND_COLOR="#3f315f"


# FastFetch
FASTFETCH_IMAGE="~/.config/fastfetch/images/Jesusjojo.png"
FASTFETCH_KEYS_COLOR="#5c4c7f"


# Themes-Menu
TM_BG="#110e1abc"
TM_FG="#e2e2e2"
TM_ACCENT="#31254d"


# Kitty
KITTY_BG="#0b0516"


# Dunst
DUNST_COLOR="#261634cc"
DUNST_FOREGROUND="#ffffff"
DUNST_BORDER="#ad92c4"


# Awww Wallpapers
WALL_DO_TEMA="luffybirthday.webp"


# SDDM
BG_SDDM="rei.mp4"


# Hyprlock
LOCK_ICON="~/Profiles/reze.jpg"
LOCK_BG="~/Wallpapers/majotar.png"
LOCK_ICON_BORDER="rgb(118, 77, 175)"
LOCK_SONG_COLOR="rgb(118, 77, 175)"
LOCK_MINUTES_COR="rgb(118, 77, 175)"
LOCK_BLUR="1"




# --- SCRIPT ---


# Hyprland
sed -i "s/col.active_border = .*/col.active_border = $HYPR_ACTIVE_BORDER/g" "$PATH_HYPR" # borda ativa
sed -i "s/col.inactive_border = .*/col.inactive_border = $HYPR_INACTIVE_BORDER/g" "$PATH_HYPR" # borda inativa


# Cliphist
sed -i "s/    bg: .*/    bg: $CLIP_BG;/g" "$PATH_CLIP"
sed -i "s/    bg-alt: .*/    bg-alt: $CLIP_BG_ALT;/g" "$PATH_CLIP"
sed -i "s/    fg: .*/    fg: $CLIP_FG;/g" "$PATH_CLIP"
sed -i "s/    accent: .*/    accent: $CLIP_ACCENT;/g" "$PATH_CLIP"
sed -i "s/    border-col: .*/    border-col: $CLIP_BORDER_COL;/g" "$PATH_CLIP"
sed -i "s/    placeholder-color: .*/    placeholder-color: $CLIP_PLACEHOLDER_COLOR;/g" "$PATH_CLIP"


# Emojis
sed -i "s/    bg:            .*/    bg:            $EMO_BG;/g" "$PATH_EMO"
sed -i "s/    bg-alt:        .*/    bg-alt:        $EMO_BG_ALT;/g" "$PATH_EMO"
sed -i "s/    fg:            .*/    fg:            $EMO_FG;/g" "$PATH_EMO"
sed -i "s/    selected:      .*/    selected:      $EMO_SELECTED;/g" "$PATH_EMO"
sed -i "s/    border:        .*/    border:        $EMO_BORDER;/g" "$PATH_EMO"
sed -i "s/    urgent:        .*/    urgent:        $EMO_URGENT;/g" "$PATH_EMO"


# Waybar
sed -i "/#workspaces button.active {/,/}/ s/background: .*/background: $WAY_BACKGROUND;/g" "$PATH_WAY" # Seleciona apenas a variável "background" dentro do bloco "#workspaces button.active", o {/,/} seleciona tudo dentro desse bloco e procura pelo background.
sed -i "/#custom-terminal:hover/,/}/ s/color: .*/color: $WAY_HOVER;/g" "$PATH_WAY" # Seleciona todas as categorias dentro de "custom-terminal:hover" até a chave }, então todos os blocos são selecionados juntos, evitando escrever um sed gigante.


# Fast-Menu
sed -i "s/    background:                  .*/    background:                  $FAST_BACKGROUND;/g" "$PATH_FAST"
sed -i "s/    background-alt:              .*/    background-alt:              $FAST_BACKGROUND_ALT;/g" "$PATH_FAST"
sed -i "s/    foreground:                  .*/    foreground:                  $FAST_FOREGROUND;/g" "$PATH_FAST"
sed -i "s/    selected:                    .*/    selected:                    $FAST_SELECTED;/g" "$PATH_FAST"
sed -i "s/    active:                      .*/    active:                      $FAST_ACTIVE;/g" "$PATH_FAST"
sed -i "s/    urgent:                      .*/    urgent:                      $FAST_URGENT;/g" "$PATH_FAST"
sed -i "s|    background-image:            .*|    background-image:            $FAST_BACKGROUND_IMAGE;|g" "$PATH_FAST" # Nesse sed usamos pipes ao invés de barras porque a variável de imagem tem barras (/) para indicar o caminho da imagem, e isso resulta em erro no sed. Então usamos pipes apenas neste comando para que não tenhamos que alterar o jeito que a variável tem o caminho escrito. Você também pode usar vírgulas, barras contrárias, dois pontos (:) e ; se quiser, mas eu recomendo pipes pela organização.


# Discord
sed -i "s|  --background-image: url('.*')|  --background-image: url('$DISCORD_BG')|g" "$PATH_DISCORD_FILE"


# Cava
sed -i "s/foreground = '.*'/foreground = '$SOUND_COLOR'/g" "$PATH_CAVA"


# FastFetch
sed -i 's|        "source": ".*",|        "source": "'$FASTFETCH_IMAGE'",|g' "$PATH_FASTFETCH"
sed -i  's/            "keys": ".*",/            "keys": "'$FASTFETCH_KEYS_COLOR'",/g' "$PATH_FASTFETCH"


# Themes-Menu
sed -i "s/    bg: .*/    bg: $TM_BG;/g" "$PATH_THEMES_MENU"
sed -i "s/    fg: .*/    fg: $TM_FG;/g" "$PATH_THEMES_MENU"
sed -i "s/    accent: .*/    accent: $TM_ACCENT;/g" "$PATH_THEMES_MENU"


# Kitty
sed -i "s/background .*/background $KITTY_BG/g" "$PATH_KITTY"


# Dunst
sed -i "s/background = .*/background = \"$DUNST_COLOR\"/g" "$PATH_DUNST"
sed -i "s/foreground = .*/foreground = \"$DUNST_FOREGROUND\"/g" "$PATH_DUNST"
sed -i "s/frame_color = .*/frame_color = \"$DUNST_BORDER\"/g" "$PATH_DUNST"


# Awww Wallpapers
~/.config/os_themes/awww/set_wallpaper.sh "$WALL_DO_TEMA" # Dentro deste arquivo temos a variável "WALL_NOME" que tem $1 dentro. Esse $1 é como um pedido de um valor, e passamos o valor dentro de "WALL_DO_TEMA" ao chamar o script.


# SDDM
sed -i "s|background = .*|background = \"$BG_SDDM\"|g" "$PATH_SDDM"


# Hyprlock
sed -i "/# --- Background ---/,/}/ s|path = .*|path = $LOCK_BG|g" "$PATH_HYPRLOCK" # wallpaper
sed -i "/# --- Foto de perfil ---/,/}/ s/border_color = .*/border_color = $LOCK_ICON_BORDER/g" "$PATH_HYPRLOCK" # borda da foto
sed -i "/# --- Foto de perfil ---/,/}/ s|path = .*|path = $LOCK_ICON|g" "$PATH_HYPRLOCK" # foto de perfil
sed -i "/# --- Minutos ---/,/}/ s/color = .*/color = $LOCK_MINUTES_COR/g" "$PATH_HYPRLOCK" # cor dos minutos
sed -i "/# --- Música tocando ---/,/}/ s/color = .*/color = $LOCK_SONG_COLOR/g" "$PATH_HYPRLOCK" # cor da música
sed -i "/# --- Background ---/,/}/ s|blur_passes = .*|blur_passes = $LOCK_BLUR|g" "$PATH_HYPRLOCK"




# --- FINALIZAÇÕES ---
pkill waybar && waybar
hyprctl reload