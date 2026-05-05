Guia de Customização: SilentSDDM (Qt6)

--- COMO FUNCIONA ESTE TEMA? ---

O SilentSDDM (silent) é um tema modular feito em Qt6 (resumindo: tema em qt6). Ele separa a parte do código (lógica) da parte estética (presets). Isso permite que você mude cores e wallpapers sem precisar mexer em códigos complexos.

--- ONDE CUSTOMIZAR ---

A "mágica" acontece dentro de `configs/`. Lá você encontra arquivos como `silvia.conf`, `rei.conf` e `ken.conf`. Para mudar algo neles, use o `sudo nano`.

--- COISAS QUE PODEM SER ALTERADAS NOS CONFIGS ---

- Background: Mude a linha background = "nome.mp4" ou .png
- Idioma da Data: Mude locale = "en_US" para locale = "pt_BR"
- Blur: Altere o valor numérico em blur = para aumentar ou diminuir o embaçado
- Menus: Nas seções de Session, Keyboard e Layout, mude display = true para false para deixar o visual limpo

--- ASSETS ---

Para não bagunçar a sua `/home/`, todas as imagens, ícones e vídeos que o tema utiliza devem ser colocados em:
`/usr/share/sddm/themes/silent/assets/`

--- ALTERAÇÕES FEITAS (OU SEJA, USANDO O TEMA SPURIA.CONFIG) ---

Para deixar o tema com a nossa cara, fizemos alterações diretas nos componentes (pasta `components/`). Se você quiser desfazer, terá que editar os arquivos `.qml`:

1. **Nome Fixo (Alex):** Alterado no arquivo `LoginScreen.qml` dentro do bloco `activeUserName`.
2. **Avatar Fixo (Seacat):** Alterado no arquivo `UserSelector.qml` na linha `source:`, apontando direto para `assets/seacat.png`.

--- COMO ALTERAR O CONFIG ATUAL DO TEMA SILENT ---

Para decidir se o SDDM vai abrir o tema Silvia, o Rei ou o Ken, você deve editar o arquivo de metadados: "sudo nano /usr/share/sddm/themes/silent/metadata.desktop" (este é o caminho para o arquivo onde alteramos o "tema" atual do tema silent.
