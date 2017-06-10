---
title: Seu Web App offline mais rápido que preparo de Miojo
tags:
  - Código
date: 2016-09-02 22:11:55
---

#### Código pronto em três minutos ou seu dinheiro de de volta

<figure>![](https://cdn-images-1.medium.com/max/1024/0*dMnWSvjPx2RMGpPm.jpg)</figure>

Quando você pensa que não, 2016 já está perto de chegar ao fim. Isso só é um indicador a mais que já passou da hora de fazer com que seu web app funcione offline.

Sim, eu sei, os **ServiceWorkers**, apesar de não parecer tão terríveis quanto eram antigamente ainda parecem muito complicados de usar. Principalmente por que o código (e a maneira com que ele funciona) é muito diferente do “normal” que estamos acostumados.

No início do ano eu fiz um Hangout com o GDG Belo Horizonte sobre como usar ServiceWorkers. A palestra tá no meu canal, e você pode ver abaixo. Acho que é o único conteúdo sobre isso em Português no YouTube, então vale o seu like.

Porém, ainda sim, usar **ServiceWorkers **sem exemplos mais claros ainda não é das tarefas mais fáceis. Seria ótimo se, sei lá, tivéssemos algum repositório com uma série de exemplos, que a gente pudesse ao menos _c̶o̶p̶i̶a̶r̶ ̶e̶ ̶c̶o̶l̶a̶r̶_ olhar e entender melhor como funciona.

<figure>![](https://cdn-images-1.medium.com/max/1024/1*RN4fR6p_sKrw0SZ0NGuC8w.png)<figcaption>Avisa a Ludmila que tem repo sim</figcaption></figure>

O time do Google Chrome tem o [**GoogleChrome/samples** na rede social de códigos GitHu](https://github.com/GoogleChrome/samples/tree/gh-pages/service-worker)b, com diversos exemplos excelentes de como usar ServiceWorkers para armazenar o **conteúdo offline**.

Alguns exemplos da lista são:

*   [**_Basic Demo_**](https://googlechrome.github.io/samples/service-worker/basic/index.html), que mostra o básico do básico de implementaçao de SW em uma página. Como é o básico do básico, é justamente o melhor lugar pra começar se você nunca fez algo parecido.
*   [**_Detailed Registration_**](https://googlechrome.github.io/samples/service-worker/registration-events/index.html), que já é alguns passos a frente, e você aprende como registrar um SW na sua página, além de receber informações detalhadas do SW, como os seus estados e versões.
*   [**_Multiple fetch handlers_**](https://googlechrome.github.io/samples/service-worker/multiple-handlers/index.html), onde você pode ter mais noções de como os SW funcionam como uma espécie de proxy, entre seu servidor e o navegador
*   [**_Custom offline page_**](https://googlechrome.github.io/samples/service-worker/custom-offline-page/index.html), exemplo mais básico de offline (usando de base as “etapas” acima citadas), onde um simples _fallback_ é exibido ao usuário, caso ele esteja sem conexão.

E por aí vai. O legal do repositório é que os códigos são os mais auto-contidos o possível, então é praticamente fazer um _plug’n’play_ no código da sua própria aplicação.

ServiceWorkers são úteis para dois pilares importantes de** Progressive Web Apps**: as **notificações** e o **acesso offline**. Aguarde cenas dos próximos capítulos.