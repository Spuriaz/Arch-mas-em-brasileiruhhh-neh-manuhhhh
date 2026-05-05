
--- EXPLICAÇÃO GERAL ---
O GRUB é o programa responsável por:
- iniciar antes do sistema operacional
- mostrar o menu de boot (Arch, Windows, recovery, etc.)
- carregar o sistema escolhido
A customização do GRUB não é feita diretamente nos arquivos de boot, e sim através de arquivos de configuração que geram esses arquivos automaticamente.

---

--- ESTRUTURA ---

- /boot -
Essa pasta guarda arquivos que realmente são utilizados no boot (inicialização do sistema). Normalmente você não mexe aqui, são coisas mais do sistema mesmo. Personalização é apenas na pasta grub, em themes.

Exemplo de arquivos dentro de /boot:

/boot
├── vmlinuz-linux
├── initramfs-linux.img
├── amd-ucode.img
├── efi/
└── grub/
Apenas evite mexer se não souber o que está fazendo ou não tiver necessidade.

- /boot/grub -

Aqui é a pasta do grub. É aqui que você pode modificar os temas. O boot é apenas o "armazém" que o grub pega arquivos que precisa para iniciar. O grub NÃO GERA arquivos de inicialização, os arquivos reais do boot estão em /boot, mas o grub pega estes arquivos e INICIA O BOOTLOADER.
"Então por que não utilizar só o /boot, sem grub?" - Porque o kernel NÃO SE INICIA SOZINHO (o arquivo do kernel fica em /boot, é o vmlinuz-linux). O hardware (BIOS/UEFI) não sabe ler este arquivo, então o grub "traduz" ele. Por isso um bootloader para linux como o grub é importante. Além disso, o GRUB tem customização e ferramentas de reparo caso seja apagado do sistema, como boot -repair. 
/boot/grub
├── grub.cfg
├── grubenv
├── fonts/
├── themes/
├── locale/
└── x86_64-efi/

---

--- FUNÇÕES DOS ARQUIVOS DO GRUB ---

- grub.cfg -

- É o arquivo final de configuração do GRUB
- Contém as entradas de boot (Arch, Windows, recovery)
- É gerado automaticamente
- Nunca deve ser editado manualmente. Se for editar, saiba o que está fazendo e os riscos

Sempre que se roda: "sudo grub-mkconfig -o /boot/grub/grub.cfg", esse arquivo é recriado do zero, sendo ajustado como necessário.

- /etc/default/grub -

Este é o arquivo de configuração do GRUB. É nele que você deve mexer para declarar coisas, como temas e resolução. Você pode mexer sem preocupação, contanto que mexa somente em coisas "ok", como temas. Evite mexer no que não sabe ou o que seja arriscado
- É onde se define:
  - tema
  - tempo de espera
  - resolução
  - opções visuais
Exemplo: "GRUB_THEME="/boot/grub/themes/minegrub/theme.txt": Essa linha é uma linha de configuração dentro deste arquivo, é a linha onde selecionamos o tema que queremos para o grub. Basta colocar o caminho até o arquivo de tema (theme.txt) do diretório do tema (neste caso, minegrub é o tema selecionado.
Qualquer alteração aqui exige rodar o `grub-mkconfig`. Ou seja, após QUALQUER alteração neste arquivo, rode este comando para "atualizar" o boot loader.

- grubenv -

Não há muita necessidade de mexer neste arquivo. Ele guarda variáveis do grub (que são usadas para sua configuração e personalização). Evite mexer nele, não é necessário 99% das vezes
- Armazena variáveis internas do GRUB
- Usado para estados temporários
- Não deve ser editado manualmente

- locale/ -

É a pasta que guarda arquivos de idioma do grub (apenas evite, não tem razão nenhuma para mexer aqui)
- Arquivos de idioma do GRUB
- Não mexer

- x86_64-efi/-

Evite também. Não há motivos para mexer aqui.

- Módulos internos do GRUB para sistemas UEFI
- Não mexer

- fonts/ -

É a pasta onde guardamos fontes para os temas. Se você for instalar um tema que usa uma fonte diferente normalmente eles avisam no readme.md sobre isso, e quando você usa um instalador automático ele já coloca no lugar certo para você. Você pode colocar novas fontes aqui caso queira. Muitos temas usam fontes próprias dentro do tema.

- Contém fontes globais do GRUB
- Normalmente existe apenas: unicode.pf2

- themes/ -

Este é o diretório mais legal. É aqui que gerenciamos os temas do GRUB. Caso um tema que você usava seja deletado, normalmente o grub só carrega sem tema, então aqui é seguro de se mexer.

- Diretório onde ficam os temas do GRUB
- É seguro mexer aqui

Exemplo:
themes/
├── starfield/
├── minegrub/
└── outro-tema/

Cada um desses são temas, e dentro deles tem assets, backgrounds, pngs, e o arquivo mais importante do tema: theme.txt. É o arquivo principal de configuração do tema. É este arquivo que "estrutura" o tema para o GRUB utilizar.

- theme.txt -
- Arquivo principal do tema
- Define todo o visual:
  - fundo
  - fontes
  - cores
  - layout

Funciona como um arquivo de estrutura (semelhante a um HTML).
Exemplo: "background_image = "background.png"


---

--- COMO INSTALAR OU TROCAR UM TEMA ---

1. Copiar o tema para: "/boot/grub/themes/nome-do-tema/"
Ou seja, apenas instale o tema como uma pasta (se vier em zip basta extrair), e coloque o tema em /boot/grub/themes. O nome da pasta será o nome do tema (por exemplo "minegrub")

2. Editar o arquivo de configuração principal: "sudo nano /etc/default/grub"
Este é o caminho para o arquivo de configuração DO GRUB. Lá você pode editar o tema e outras coisas.

3. Definir o tema: "GRUB_THEME="/boot/grub/themes/nome-do-tema/theme.txt"
Altere a linha "GRUB_THEME" com o caminho para o arquivo "theme.txt" do tema que você quer.

4. Gerar o arquivo final do GRUB: "sudo grub-mkconfig -o /boot/grub/grub.cfg"
Atualizamos o arquivo de configuração final do grub (não tente mexer neste arquivo, ele é gerado automaticamente pelo sistema, e ao rodar o comando acima você o atualiza, atualizando o tema também).

5. Reiniciar o computador.

---

--- SCRIPTS DE INSTALAÇÃO ---

Alguns temas vem com scripts de instalação automático (como o Minegrub) que ao serem executados colocam o tema no lugar certo, e em alguns casos já altera a linha "GRUB_THEME" no arquivo de configuração do GRUB.
Scripts como `install_theme.sh` geralmente:
- copiam o tema para `/boot/grub/themes`
- configuram o `GRUB_THEME`
- executam `grub-mkconfig`

Ou seja, automatizam os passos manuais.  
Entender como o grub funciona permite corrigir ou alterar o que for necessário caso haja algum problema. Por isso, se as vezes não confiar num arquivo de instalação você mesmo pode fazer essa instalação manualmente.

---

--- REGRAS IMPORTANTES ---

- Nunca editar `grub.cfg` manualmente
- Sempre editar `/etc/default/grub` (arquivo feito PARA ALTERARMOS O GRUB, ESTE. Não o grub.cfg)
- Sempre rodar `grub-mkconfig` após mudanças
- É seguro mexer apenas em:
  - `/etc/default/grub`
  - `/boot/grub/themes`
  - `/boot/grub/fonts`

Evite mexer em qualquer outra coisa se não souber o que está fazendo.
