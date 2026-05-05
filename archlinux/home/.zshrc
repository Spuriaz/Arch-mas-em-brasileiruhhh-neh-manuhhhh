# --- PATH DA INSTALAÇÃO DO OH MY ZSH (ONDE FOI INSTALADO) ---

# Essa linha define onde o oh-my-zsh foi instalado. Ou seja, o zsh está instalado em "~/.oh-my-zsh" (uma pasta dentro da pasta home). Ele cria uma variável chamada ZSH (que inclusive você pode ver pelo terminal usando o comando "echo $ZSH") e atribui a ela o valor que indica a localização de onde o zsh foi instalado (em home, na pasta .oh-my-zsh).
export ZSH="$HOME/.oh-my-zsh"

# --- TEMAS ---
# Escolha um tema para o terminal. Se você escolher "random", ele escolhera um tema aleatório. É possível ver os temas disponiveis usando o comando "ls ~/.oh-my-zsh/themes"
# Ou veja a wiki: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gnzh"

# Caso você coloque os temas em random (aleatório), você pode criar uma lista de temas favoritos. O random escolherá um tema aleatório desta lista
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# --- TAB ---
# Esta variável faz com que a função de auto completar (TAB) diferencie letras maiúsculas de minúsculas
# CASE_SENSITIVE="true"

# Essa opção, quando ativada, faz com que o autocompletar seja insensível a hífens (-) e sublinhados (_). Ou seja, se você escrever "my_file.txt" o auto completar funcionará mesmo se o nome do arquivo for "my-file.txt"
HYPHEN_INSENSITIVE="true"

# --- UPDATE ---
# Modo de atualização do zsh. 1- Atualização automática desativado, 2- atualização automática sem perguntar, 3- te avisa quando há uma atualização, e você atualiza manualmente.
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# O intervalo em dias que o oh my zsh verifica as atualizações
zstyle ':omz:update' frequency 10

# --- LINKS ---
# Essa variável impede que o ZSH "corrija" um link quando você o cola no terminal. Por exemplo, se você colar: "chatgpt.com", ele vai mudar para "https://chatgpt.com" SE ESTIVER COMENTADA
DISABLE_MAGIC_FUNCTIONS="true"

# --- VISUAL ---
# Essa variável desativa as cores quando você usa o comando "ls". Deixar essa opção ativada dificulta a diferenças pastas de arquivos
# DISABLE_LS_COLORS="true"

# Descomentar essa variável faz com que o terminal não altere mais o título da aba do terminal (recomendo deixar comentada)
# DISABLE_AUTO_TITLE="true"

# Essa variável é um corretor ortográfico. Caso você digite algum comando errado, como "gti", ele pergunta se não era "git".
ENABLE_CORRECTION="true"

# Basicamente, este recurso te mostra "bolinhas" ou palavras de carregamento enquanto ele processa coisas ou até pensa no que te oferecer no "TAB" (preenchimento automático)
# Aqui você pode escolher entre palavra (neste caso, loading, logo após {yellow}):
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}loading...%f"
# Ou simplesmente em bolinhas vermelhas:
COMPLETION_WAITING_DOTS="true"
# No momento, apenas as bolinhas vermelhas estão ativas. Você deve escolher um ou outro.

# Se o terminal ficar lento em pastas grandes de Git, ative a linha abaixo. Ela faz o prompt ignorar arquivos novos para ganhar velocidade
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Se essa linha não estiver comentada, quando você rodar o comando "history" para ver o histórico de comandos utilizados, ele mostrará também a data em que o comando foi utilizado (dia, mês, ano)
# HIST_STAMPS="dd/mm/yyyy"

# --- CUSTOM/CAMINHOS ---

# Se você quiser usar um outro folder custom (como plugins e temas pessoais) para o oh my zsh, coloque-o no aqui
# ZSH_CUSTOM=/path/to/new-custom-folder

# São os plugins que o zsh carrega antes de abrir o terminal. Eles tem várias funções (que você pode ver na wiki) e ajudam na produtividade
plugins=(git archlinux zsh-autosuggestions)

# Este é o caminho principal que carrega todos os temas, plugins, atualizações, etc. Sem ela o oh my zsh não consegue fazer suas funções, nada carrega (como os temas, cores e os plugins) e ele voltará a ser um terminal "pelado" e básico. Obs: ele deve ficar sempre no final depois de toda a configuração que você fez, porque arquivos são lidos de cima pra baixo.
source $ZSH/oh-my-zsh.sh

# --- USER SETTINGS ---

# Nos terminais linux "man" significa manual. Você pode utilizá-los antes dos comandos para rebcer um "manual" de como os usar. Por exemplo: "man ls". Esses manuais ficam em um local dentro do computador e na maioria dos casos o sistema já sabe onde fica esse caminho. Essa opção só seria importante caso você trocasse o caminho, "criasse/baixasse", estivesse compilando um programa/software do zero ou caso o terminal não reconheça o caminho (possívelmente o arquivo tenha sido criado no local errado, por algum motivo). Recomendo deixar desativado na maioria das vezes.
# export MANPATH="/usr/local/man:$MANPATH"

# Este comando troca a linguagem do terminal. Mensagens de erros na maioria das vezes aparecerão em português e o terminal aceitará acentos e ícones. Mesmo que pareça uma boa ideia deixar está linha ativa, normalmente isso já vem feito nos sistemas. Recomendo deixar ativo apenas se você estiver tendo problemas com acentos
# export LANG=pt_BR.UTF-8

# Quando você for usar um editor de texto (como nano) para fazer algo, como um commit, ele pode abrir um programa que você prefirá (como o vim). O primeiro "if" abre um editor de texto específico SE VOCÊ ESTIVER ACESSANDO O DESKTOP REMOTAMENTE (de outro lugar) usando um comando chamado ssh. Caso (else) você não esteja conectado, ele abre outro
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim' # Caso o acesso venha da internet, abre o vim (para melhor fluidez em trabalho em grupo)
else
   export EDITOR="code --wait" # Caso contrário (ou seja, se eu estiver abrindo NESTE desktop), abra o code (visual studio code)
fi

# Ajuda o computador a compilar programas especificamente para o seu processador. Só ative se tiver erros ao instalar bibliotecas de programação (como C, Ruby, etc)
# export ARCHFLAGS="-arch $(uname -m)"

# Basicamente você pode criar atalhos para comandos. Por exemplo, ao invés de escrever "sudo pacman -Syu", você pode criar um atalho chamado "atualizar" que já faz isso. Caso você tenha muitos apelidos (alieses), é recomendado criar um arquivo para colcoar eles de forma organizada (ex: aliases.zsh)
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# Para ver a lista de atalhos (aliases) ativas, rode "alias" no terminal

# Para criar um atalho (alias), você deve escrever a palavra alias, o nome que você inventou para o atalho (ex: "atualizar"), o sinal de = e o comando real entre aspas.
# Lembre-se que o nome que você inventou, o sinal de = e o comando (entre aspas) precisam estar juntos, sem espaço.

# Exemplos de atalhos (aliases):

# alias atualizar="sudo pacman -Syu"
# alias instalar="sudo pacman -S"
# alias remover="sudo pacman -Rns" (remove pacotes e suas dependências)
# alias procurar="sudo pacman -Ss"
# alias hyprlandconfig="code ~/.config/hypr/hyprland.conf"
# alias ..="cd .."

alias prepare="~/.config/automate/startpc.sh"
alias mypc="~/.config/automate/terminalapps.sh"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
