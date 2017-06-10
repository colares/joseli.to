---
title: Gerando SSL grátis pra qualquer site. Sem tocar na linha de comando.
tags:
  - Código
date: 2016-08-18 20:33:21
---

<figure>![](https://cdn-images-1.medium.com/max/1024/1*wvgOxnmzg6h8IZjIIOBaOQ.png)</figure>

#### Não tem mais desculpa. Vamos encriptar tudo.

Eu já falei sobre HTTPS/SSL [não uma](https://codigo.joselito.space/seus-sites-seguros-de-gra%C3%A7a-sem-custo-nenhum-e-n%C3%A3o-pagando-nada-49df4694bd85?source=latest), mais [duas vezes](https://codigo.joselito.space/http-s2-addenda-175e8b64b184?source=latest) aqui no blog. E não vou cansar de falar até eu ver todos os sites com um cadeadinho na barra de navegação.

O post de hoje vem resolver todos os problemas e calar todas as desculpas. Nunca foi tão fácil gerar e instalar SSL feito agora. E aprenderemos passo-a-passo como fazer isso. No tutorial de hoje usaremos o [Let’s Encrypt](http://letsencrypt.com), já mencionado em posts anteriores.

Além disso, tem uma novidade: se você gosta de vídeo-tutoriais, é só dar play abaixo e ver seguir os passos do vídeo. Se você prefere texto, tudo bem, basta seguir em frente sem olhar para o lado. _Mas cuidado com o mestiço._

#### Primeira Etapa

Acesse o site [https://zerossl.com](https://zerossl.com). Quando ele carregar, clique no botão **Online Tools**, e depois, clique em **Start**, na seção _“FREE SSL Certificate Wizard”_

<figure>![](https://cdn-images-1.medium.com/max/840/1*wv8CyZeLpu6IQRpVQXP3yQ.png)</figure>

#### Segunda Etapa: O Mago

Encontramos o form que fará todo o trabalho pra gente na requisição de um SSL para o Let’s Encrypt. Vamos com carinho e dedicação preencher cada etapa, sem pular nada.

**#0:** Preencha o domínio ou subdomínio que você quer instalar um certificado SSL. Confirme que aceita os termos de uso e clique em **Next**.

<figure>![](https://cdn-images-1.medium.com/max/1024/1*0OT1XZRw-PecB-8gvJo2PQ.png)<figcaption>Sua tela deve estar mais ou menos assim. Não peencha nenhum outro campo!</figcaption></figure>

Após isso, ele irá exibir uma mensagem questionando se você deseja que a versão prefixada com **_www _**seja adicionada a requisição do certificado. Isso é bem útil se você está instalando num domínio completo. Selecione o que for melhor para o seu caso.

Você verá uma mensagem de que ele está gerando a requisição. Aguarde, pois demora um pouco as vezes. Ao estar concluído, repare que o campo de domínio **ficou vazio** e o _textarea _abaixo dele ficou **preenchida**. Isso significa que a chave de requisição do seu domínio foi criada. Baixe ela e guarde num lugar seco sem odor.

**#1: **Sem mudar nada, aperte **Next **novamente. Estamos “repetindo” um passo, mas a grande diferença é que agora estamos utilizando uma chave devida pra isso. Nessa etapa estaremos gerando a **account key**. Ambas essas chaves são importantes para a validação e principalmente a renovação do certificado, já que os certificados do Let’s Encrypt são validos por apenas 90 dias (mas são renováveis indefinidamente).

Depois de gerar a account key, as sua tela deve estar semelhante ao screenshot a seguir:

<figure>![](https://cdn-images-1.medium.com/max/1024/1*-HMuRTNUhlojU9o9pnQMxw.png)<figcaption>Lembre sempre de baixar as chaves</figcaption></figure>

Depois disso, é só apertar em **Next **e ir pra etapa de verificação.

#### Verificando se o seu site é seu mesmo

Pra você instalar o certificado em um site, o Let’s Encrypt precisa ter certeza que ele é seu mesmo. Convenhamos, é uma dúvida razoável. Além de evitar que a galera peça certificado a torto e a direito a seu bel prazer.

O jeito que a galera da **ZeroSSL **usou pra fazer isso foi bem interessante. Você tem que criar um arquivo específico, numa pasta específica do seu subdomínio, com um conteúdo específico. Ele vai dar _match _nisso tudo e, funcionando, a identidade do site está confirmada. É mais ou menos parecido quando você vai verificar um site com o Google, a qual você sobe um arquivo _html _no seu servidor.

A tela de verificação é semelhante ao screenshot a seguir:

<figure>![](https://cdn-images-1.medium.com/max/1024/1*_DngVfCRHuB2SNdideFvUQ.png)</figure>

Observe que todas as informações estão claras. No caso, temos que criar um arquivo texto (sem extensão) com o nome descrito abaixo de File, o conteúdo sendo a string depois de Text e a pasta em si sendo **/.well-known/acme-challenge/**. Tudo bem explicadinho pelo site do ZeroSSL.

Meia duzia de CTRL+C/V depois você tá pronto pra correr pro abraço. Após enviar o arquivo pro seu servidor, aperte novamente em **Next**.

#### OEAAAAAA

Se você chegou a página de confirmação, meus parabéns! Seu certificado (composto de dois arquivos) estará lá em baixo. Basta baixar ambos e instalar no seu servidor.

<figure>![](https://cdn-images-1.medium.com/max/1024/1*GfizcFKmvcxxUhBearC1Dg.png)<figcaption>A fantástica tela final (tm)</figcaption></figure>

Como você instala no seu servidor, aí ja é outra história, e outro post… Cada caso é um caso. Pode me [perguntar no Twitter](http://twitter.com/joselitojunior1), se eu manjar eu te ajudo.

Livin’ la vida Encrypted.