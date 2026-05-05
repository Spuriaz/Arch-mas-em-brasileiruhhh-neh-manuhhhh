# Como funciona o SDDM (Simple Desktop Display Manager)
--- O QUE É SDDM ---

O SDDM é o gerenciador de exibição que faz a ponte entre o carregamento do Linux e a sua interface gráfica (Hyprland). Ele é o responsável por mostrar a tela onde você digita sua senha.

--- DIRETÓRIOS DO SDDM ---

No nosso sistema Arch, o SDDM se organiza em dois lugares principais:

1. Pasta de Temas: /usr/share/sddm/themes/
   Aqui é onde todos os visuais (como o SilentSDDM) ficam instalados. Cada pasta dentro desse diretório é um tema diferente.

2. Configuração Global: /etc/sddm.conf
   Este é o arquivo "mestre". É nele que o sistema lê qual tema deve carregar no boot.

--- COMO TROCAR O TEMA SDDM ---

Diferente de outros PCs que usam a pasta `sddm.conf.d/`, nós utilizamos diretamente o arquivo principal. Para trocar o tema:
Rode o comando: "sudo nano /etc/sddm.conf" (este é o arquivo onde definimos o tema DO SDDM). Dentro do arquivo, procure pela seção [Theme]. Você deve alterar o valor de Current para o nome exato da pasta do tema que está em /usr/share/sddm/themes/.

Nunca reinicie o PC logo após mudar algo no SDDM sem testar antes. Você pode testar o visual rodando: "sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/silent".
