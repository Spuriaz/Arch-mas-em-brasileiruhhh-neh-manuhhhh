# --- CONFIGURAÇÕES GERAIS ---
[global]
monitor = 0 # Diz em qual monitor a notificação aparece (0: monitor principal, 1: segundo monitor, 2: terceiro monitor)
follow = mouse # Se você tiver mais de um monitor a notificação aparece no monitor em que o mouse está
width = 300 # Largura da caixa
height = 300 # Altura da caixa
origin = top-right # Define em qual canto da tela a caixa da notificação "nasce"
offset = 20x20 # Distância mínima da notificação até as bordas da tela (20 pixeis das laterais x 20 pixeis da altura)
scale = 0 # Escala HiDPI da tela, altere para 1 ou 2 se estiver muito pequena em seu monitor
notification_limit = 5 # Número de notificações vísiveis ao mesmo tempo (se aparecer uma sexta notificação a mais antiga some)

idle_threshold = 120 # Após 120 segundos sem mexer no teclado o mouse, o dunst para de exibir notificações
history_length = 20 # Ele guarda o histórico das ultimas 20 notificações
show_indicators = yes # Mostra pontos, barras, indicadores de notificação (recomendado deixar ativo)





# --- FONTES/TEXTO ---
font = JetBrainsMono 10 # Fonte
word_wrap = yes # Quebra de linha dentro do texto. Sem isso, mensagens muito grandes sairiam da caixa de notificação
ellipsize = middle # Quando o texto é grande demais, escolhe onde cortar (start: começo, middle: meio, end: final)
markup = full # Permite formatação no texto, como negrito e itálico. Como usamos "format = <b>%s</b>\n%b", isso só aparece corretamente pelo markup full
# format = "<b>%s</b>\n%b" # É o formato da notificação. S é o título, e B é o texto (body). Há um <b> e um </b> no S porque eles servem como marcadores para deixar o título em negrito. O \n é uma quebra de linha, e em seguida aparece o texto da notificação.
format = "<span size='11300'><b>%s</b></span>\n<span size='9000'>%b</span>" # Mesma coisa do format de cima, porém com tamanho personalizado. O primeiro span size é o tamanho do título, e o segundo é o tamanho do texto.

alignment = left # Alinhamento do texto. É o lado em que o texto da notificação aparecerá dentro da caixa da notificação
vertical_alignment = center # Alinhamento do texto dentro da caixa (cima, centro, baixo)





# --- ESTÉTICA ---
frame_width = 2 # Largura da borda (0 para ficar sem borda)
frame_color = "#ffffffff" # Cor da borda da notificação e dos separadores internos
separator_color = frame # Diz para usar a mesma cor de "frame" (a borda da notificação) para os separadores internos (que separa título, corpo, etc)
separator_height = 2 # Espessura da linha do separador
corner_radius = 15 # Arredondamento das bordas

padding = 10 # Espaço INTERNO entre o texto e a borda da caixa
horizontal_padding = 12 # Espaço INTERNO dos lados (esquerda e direita)

icon_position = left # Posição do ícone (off para desativar ícones)
max_icon_size = 50 # Tamanho do ícone





# --- CONFIGURAÇÕES DE CLICK ---
mouse_left_click = close_current # Se pressionar com o botão ESQUERDO do mouse feche apenas aquela notificação
mouse_middle_click = do_action # Se pressionar com o botão SCROLL ele realiza alguma ação (abrir o app, ir para a mensagem, etc)
mouse_right_click = close_all # Se pressionar com o botão DIREITO do mouse feche todas as notificações





# --- NOTIFICAÇÕES DE URGÊNCIA ---
[urgency_low] # Notificações pouco importantes (como quando se conecta um fone)
background = "#ffffffcc" # Cor do background da notificação
foreground = "#000000" # Cor do texto da notificação
timeout = 3 # Some em 3 segundos

[urgency_normal] # Notificações normais (como Discord)
background = "#ffffffcc" # Cor do background da notificação
foreground = "#000000" # Cor do texto da notificação
timeout = 5 # Some em 5 segundos

[urgency_critical] # Notificações críticas (sistema, erros, etc)
background = "#ff6f1c" # Cor do background (laranja)
foreground = "#1e1e2e" # Cor do texto (preto)
frame_color = "#ff1c1c" # Cor da borda (vermelha)
timeout = 0 # Não some da tela até ser fechada com um click