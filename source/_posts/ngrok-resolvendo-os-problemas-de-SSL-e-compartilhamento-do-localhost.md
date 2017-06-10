---
title: 'ngrok: resolvendo os problemas de SSL e compartilhamento do localhost'
tags:
  - Código
  - comando
  - https
  - segurança
  - serviço
  - ssl
  - terminal
date: 2017-04-18 10:00:40
---

Tem uns programas que a gente procurou a vida toda e não sabia que precisava.

Quando estamos desenvolvendo pra web, uma das primeiras coisas que temos que fazer é levantar um servidor local na nossa máquina para conseguir executar devidamente nossos projetos. Hoje em dia levantar um servidor é relativamente simples, existem diversas ferramentas pra isso: você pode abrir um server em uma linha de Python ou usando praticamente qualquer CLI de desenvolvimento que exista por aí. Mas como estamos em 2017 e a web evolui a cada dia &#8211; mais rápido do que precisa, por sinal &#8211; ainda existe uma coisinha um pouco complicada de testar em localhost: **o HTTPS**.

HTTPS é tema recorrente aqui no blog e não vou me extender (de novo) as suas vantagens, vamos falar mais sobre requisitos: **ServiceWorkers**, por exemplo,** **precisam de um SSL pra funcionar devidamente. Eles até funcionam sem um certificado em localhost, mas como os SW estao diretamente ligados ao certificado e ao domínio, quando você precisa testar em vários projetos, isso se torna um problema sério de organização. Quem aí nunca sofreu com um cache absurdo que só faltou você desinstalar o browser pra resolver?

Algumas APIs também exigem o uso de HTTPS pra receber uma requisição, inclusive em localhost. Só pra citar um exemplo, a **API da Uber** é assim. Dá até pra fazer umas gambiarras com serviços como o [crossorigin.me](https://crossorigin.me/), mas você deve concordar comigo que não é das coisas mais sensatas a se fazer, certo? Principalmente em produção.

Sem falar na hora de demonstrar as coisas pra o famoso cliente. Dar **deploy** pra toda vez que tiver uma pequena modificação, pra um local que no fim das contas ainda não vai ser o servidor final&#8230; dá preguiça só de pensar.

Por fim, emular um certificado SSL não é das tarefas mais fáceis, nem das mais seguras.  Então não vamos inventar ainda mais problemas pra nós mesmos resolvermos.

O **ngrok** resolve todos esses problemas. Com uma linha de comando, ele abre um túnel do nosso localhost para a web, ofercendo:

*   **Subdomínio:** ao abrir o túnel, o ngrok vai gerar um subdomínio _**https://algumacoisa.ngrok.io**_, acessível por qualquer pessoa na internet, inclusive o _cliente_. Além disso, com um HTTPS você pode fazer requests seguras com tranquilidade, além de ter um SW podendo ser testado devidamente com um escopo de domínio específico.
*   **Proteção por senha:** se você quiser, é possível configurar uma senha de acesso para cada subdomínio
*   **Testes em outros dispositivos:** O ngrok facilita muito a vida de testar em outros dispositivos, como celulares, tablets e outros computadores. Basta acessar a URL, sem ter que abrir porta de modem, conectar todo mundo na mesma rede&#8230;
*   **Testes em VM:** Mesmo em 2017, se você tem Linux ou Mac, o único jeito de testar no Microsoft Edge é tendo uma VM do Windows. Para situações como essas e tantas outras parecidas, você não precisa mais ficar instalando driver desconhecido de rede e dar foward de porta da sua maquina pra VM, é só acessar a URL gerada e sucesso.
*   **Debug de Requests:** como se não bastasse, o ngrok te oferece um serviço de debug de requisição, do lado do servidor. Você pode ver todas as requisições que foram feitas ao localhost com detalhes, além de poder fazer um &#8220;**replay&#8221;** das mesmas ao toque de um botão. Ou seja: se não funcionava algo e você deu aquela mudada no código, você não precisa emular todo o fluxo de novo pra conseguir fazer um request, basta ir no painel e dar um ~replay

Aí você me pergunta: quanto é que eu tenho que pagar por um serviço maravilhoso como esse? Nada. O ngrok é completamente open source e a única coisa que você tem que fazer é [baixar o executavel deles no site oficial](https://ngrok.com/) e rodar.

Vamos pensar num caso de uso real: digamos que você está trabalhando num aplicativo Ionic. Usando o Ionic-CLI, é possível levantar um servidor local usando o comando `ionic serve`. Isso vai abrir um servidor local na **porta 8080**, porta padrão utilizada pelo Ionic, deixando seu site acessível em **http://localhost:8080**. Para usar o ngrok, basta abrir outra aba do seu Terminal, ir onde está o executável que você baixou e rodar o seguinte comando:

<pre>$ ngrock 8080</pre>

Pronto. É tão simples que chega a dar certo ódio. Você não tem que dizer pro ngrok qual pasta, qual projeto, o que é, nada: só avise pra ele qual porta você quer que o túnel seja aberto, e ele faz o resto. Enquanto aquela instância do terminal com o ngrok estiver rodando, aquela URL é acessível por qualquer um que souber o endereço.

O ngrok ainda conta com uns serviços pro como usar ele num VPS, domínios customizados, entre outras coisas, saiba mais visitando o site oficial: **[http://ngrok.com](https://ngrok.com/).**

Agora com um _workflow_ otimizado você vai poder ter mais tempo para chorar no banheiro enquanto se lembra dos boletos atrasados! Compartilhe a dica se você gostou, com certeza você conhece um pessoal que vai curtir também! 🚀