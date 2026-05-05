# --- O QUE É SPICETIFY? ---

O Spicetify não é um novo player, mas sim uma ferramenta de customização para o cliente oficial do Spotify. Ele permite mudar o tema (cores e layout), adicionar extensões (letras, estatísticas, pular anúncios locais) e remover elementos desnecessários da interface.

# --- PRÉ-REQUISITOS ---

Para o Spicetify funcionar, você precisa ter o Spotify instalado. No Arch, a forma mais estável é via AUR.

Nota: Versões em Flatpak ou Snap são mais chatas de configurar devido às permissões de escrita. Se puder, use a versão do AUR (spotify).


# --- INSTALAÇÃO ---

1. Instalando o CLI do Spicetify

O método mais recomendado no Arch é usar um AUR Helper como o yay ou paru: "yay -S spicetify-cli spicetify-themes-git"

(O pacote spicetify-themes-git já baixa uma coleção enorme de temas para você não ter que procurar um por um).

2. Permissões de Escrita

O Spotify instala seus arquivos em pastas protegidas. O Spicetify precisa de permissão para "injetar" o código lá. Rode esses comandos para dar permissão ao seu usuário:

sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

3. Primeira Configuração

Agora, vamos gerar o arquivo de configuração e aplicar o backup inicial: "spicetify backup apply"

Se o Spotify fechar e abrir com o tema padrão (meio acinzentado/verde), deu certo!

# --- COMANDOS ---

Aqui é a parte que você vai consultar quando esquecer como dar update ou trocar algo:

- spicetify apply: Aplica qualquer alteração feita no config ou nos temas.

- spicetify update: Importante: Use isso sempre que o Spotify atualizar sozinho. Ele refaz o patch.

- spicetify backup apply: Reinstala o Spicetify do zero (útil se der erro crítico).

- spicetify restore: Remove o Spicetify e volta o Spotify ao estado original de fábrica.

# --- ATUALIZAÇÕES ---

O Arch Linux atualiza o Spotify com frequência. Se o Spotify abrir e o tema tiver sumido (voltou ao original):

1- Abra o terminal.
2- Digite: "spicetify backup apply".

Se não funcionar, tente: spicetify restore e depois spicetify backup apply.