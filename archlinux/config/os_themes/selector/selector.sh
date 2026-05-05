#!/bin/bash

# Caminhos
DIR="$HOME/.config/os_themes" # diretório da pasta principal de temas
DIR_TEMAS="$DIR/themes" # diretório onde os temas estão
ESTILO="$DIR/selector/style.rasi" # diretório onde está a estilização do menu


# Variáveis dos temas e o nome que vão ter no menu
AZUL="󰄄  Azul Marinho"
AZUL_CLARO="󰄄  Azul Claro"
BRANCO="󰄄  Branco"
VERMELHO="󰄄  Vermelho"
PRETO="󰄄  Preto"
FRUTINGER="󰄄  Frutinger"
ROXO="󰄄  Roxo"
VERDE="󰄄  Verde"
LARANJA="󰄄  Laranja"
BALLERINI="󰄄  Ballerini"


# Junta todas as opções que vão aparecer no Rofi
OPCOES="$AZUL\n$AZUL_CLARO\n$BRANCO\n$VERMELHO\n$PRETO\n$FRUTINGER\n$ROXO\n$VERDE\n$LARANJA\n$BALLERINI"

# Guarda sua escolha na variável escolha
ESCOLHA=$(echo -e "$OPCOES" | rofi -dmenu -p "Temas" -theme "$ESTILO") # "mostre o conteúdo de "opções" com menu rofi, título "temas" e com a estilização da variável "estilo" (o arquivo .rasi)

# Seleciona o script que deve rodar de acordo com a váriavel. Se você escolheu a string "azul" ele vai rodar em bash o arquivo do tema azul. Lembre de verificar se o caminho está correto.
case "$ESCOLHA" in
    "$AZUL")
        bash "$DIR_TEMAS/tema_azul_marinho.sh"
        ;;
    "$BRANCO")
        bash "$DIR_TEMAS/tema_branco.sh"
        ;;
    "$VERMELHO")
        bash "$DIR_TEMAS/tema_vermelho.sh"
        ;;
    "$PRETO")
        bash "$DIR_TEMAS/tema_preto.sh"
        ;;
    "$FRUTINGER")
        bash "$DIR_TEMAS/tema_frutinger.sh"
        ;;
    "$ROXO")
        bash "$DIR_TEMAS/tema_roxo.sh"
        ;;
    "$VERDE")
        bash "$DIR_TEMAS/tema_verde.sh"
        ;;
    "$LARANJA")
        bash "$DIR_TEMAS/tema_laranja.sh"
        ;;
    "$BALLERINI")
        bash "$DIR_TEMAS/tema_ballerini.sh"
        ;;
    "$AZUL_CLARO")
        bash "$DIR_TEMAS/tema_azul_claro.sh"  
        ;;  
    *)
        # Se você apertar ESC ou clicar fora, o script só fecha
        exit 0
        ;;
esac