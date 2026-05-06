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
COR_PRINCIPAL="#00ccff"


# Hyprland
HYPR_ACTIVE_BORDER="rgba(00ffffcc) rgba(00ff00cc) 45deg"
HYPR_INACTIVE_BORDER="rgba(ffffff33)"


# Cliphist
CLIP_BG="#11111bbc"
CLIP_BG_ALT="#1e1e2e"
CLIP_FG="#ffffff"
CLIP_ACCENT="#00ccff"
CLIP_BORDER_COL="#00ccff"
CLIP_PLACEHOLDER_COLOR="#ffffff"


# Emojis
EMO_BG="rgba(210, 255, 254, 0.56)"
EMO_BG_ALT="#00ccff"
EMO_FG="#000000"
EMO_SELECTED="#03a1c9"
EMO_BORDER="#00ccff"
EMO_URGENT="rgb(255, 0, 0)"


# Waybar
WAY_BACKGROUND="rgba(117, 214, 212, 0.93)"
WAY_HOVER="rgba(180, 237, 235, 0.93)"

# Fast Menu (Rofi-launchers)
launcher_atual="type-6"
launcher_style="style-6.rasi"
FAST_BACKGROUND="#33e5fcbc"
FAST_BACKGROUND_ALT="rgba(120, 190, 94, 0.74)"
FAST_FOREGROUND="#161616"
FAST_SELECTED="#21870dbc"
FAST_ACTIVE="#ffffff"
FAST_URGENT="#ffffff"
FAST_BACKGROUND_IMAGE='url("~/.config/rofi/images/fromme/frutinger.jpg", height)'


# Power Menu (in progress)
tema_atual="2" # (~/.config/rofi/powermenu/type-2/powermenu.sh)
style_atual="7"


# Discord
DISCORD_BG="https://i.imgur.com/l5B1ri7.png"


# Cava
SOUND_COLOR="#00ccff"


# FastFetch
FASTFETCH_IMAGE="~/.config/fastfetch/images/fruitgatito.png"
FASTFETCH_KEYS_COLOR="#65e1f1"


# Themes-Menu
TM_BG="rgba(210, 255, 254, 0.56)"
TM_FG="#000000"
TM_ACCENT="#00ccff"


# Kitty
KITTY_BG="#2a5d67"


# Dunst
DUNST_COLOR="#b5f0ffbc"
DUNST_FOREGROUND="#000000"
DUNST_BORDER="#00ccff"


# Awww Wallpapers
WALL_DO_TEMA="frutinger1.png"


# SDDM
BG_SDDM="girlinsea.mp4"


# Hyprlock
LOCK_ICON="~/Profiles/pompom.jpg"
LOCK_BG="~/Wallpapers/frutinger1.png"
LOCK_ICON_BORDER="rgb(48, 255, 231)"
LOCK_SONG_COLOR="rgb(48, 255, 231)"
LOCK_MINUTES_COR="rgb(48, 255, 231)"
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
pkill dunst
dunst &