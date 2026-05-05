# Mata os processos do cliphist por segurança
pkill -9 cliphist
pkill -9 wl-paste

# Apaga o arquivo que guarda o histórico
rm -f ~/.cache/cliphist/db

# Recria o arquivo vazio
touch ~/.cache/cliphist/db

# Iniciamos o daemon
cliphist daemon &

# Reinicia o monitoramento
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &