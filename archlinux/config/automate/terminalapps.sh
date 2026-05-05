#!/bin/bash

# Abre o Cava
kitty -e cava &

# Abre o Peaclock
kitty -e peaclock &

# Abre o Fastfetch (o 'sh -c' serve para o terminal não fechar assim que o fastfetch terminar de ler o sistema)
kitty -e sh -c "fastfetch; exec bash" &