# Como editar arquivos utilizando o comando `sed`

## O que é sed?

O sed (Stream Editor) é uma ferramenta que permite buscar e alterar textos dentro de um arquivo sem precisar abri-lo manualmente. No seu caso, ele é perfeito para scripts de temas, pois ele "entra" no arquivo de configuração, troca a cor ou o caminho do wallpaper e salva tudo em milissegundos.

```
sed -i "s/antigo/novo/g" /caminho/do/arquivo
```

## Entendendo as partes do código:

sed: Chama o programa.

-i: (In-place) Faz com que a alteração seja salva no arquivo. Sem isso, ele apenas mostra como ficaria o texto no terminal, mas não altera o arquivo real.

s: (Substitute) Indica que a operação será de substituição.

/: É o separador. Ele divide o que você quer procurar do que você quer colocar no lugar.

g: (Global) Faz com que o sed mude todas as vezes que encontrar o termo no arquivo. Se você tirar o g, ele muda apenas a primeira vez que achar o texto em cada linha.

## Lidando com barras (Caminhos de arquivos):

Como o sed usa a barra / para separar os comandos, se você tentar mudar um caminho de pasta como /home/user/foto.jpg, ele vai dar erro. Para resolver isso, você pode trocar o separador por qualquer outro caractere, como a barra vertical |:

```
sed -i "s|/home/imagem_velha.jpg|/home/imagem_nova.jpg|g" config.conf
```

## Usando o .*

Na prática se você for fazer um script e for trocar a cor atual pela cor nova, antes você precisaria saber a cor atual, certo? por exemplo: "sed -i 's/cor_atual/cor_nova/g' caminho", mas isso não funcionaria se o nome da cor nova estivesse errado. Para isso, você pode usar * e não importa o que estiver ali ele vai colocar a cor nova. Por exemplo, uma border_color:

O seu script não sabe a cor atual da variavel `border_color` porque você pode ter trocado para uma cor antes (como rosa), então nós usamos o sed assim:

```
sed -i "s/border_color = .*/border_color = ID_DA_COR_NOVA/g" /caminho/
```

Isso diz praticamente: "Ache qualquer coisa (.) e continue pegando tudo o que vier pela frente () até o fim da linha." Sem . ou sem, nada acontece. O certo é utilizar .*