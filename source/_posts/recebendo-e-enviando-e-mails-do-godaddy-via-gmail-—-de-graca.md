---
title: Recebendo e Enviando e-mails do GoDaddy via Gmail — de graça.
tags:
  - Código
date: 2016-08-04 01:21:09
---

#### Pagar Google Apps só pra fazer um e-mail de contato? Não mais.

<figure>![](https://cdn-images-1.medium.com/max/600/1*7BqV_E3zmJEt86bHN9K9Ig.jpeg)<figcaption>VaiPapai™</figcaption></figure>

Comprar domínios é um esporte radical, o qual pratico assiduamente e batalho para que se torne olímpico para as olimpíadas de Tokyo 2020.

E quando você adquire um domínio, uma das coisas mais legais a se fazer é configurar um e-mail pra ele. Nem que seja um de contato, pra fazer aquele bolado.

Comprando seu domínio no GoDaddy (que não tá patrocinando o post, [mas poderia](mailto:eu+paganois@joselitojunior.com)) você pode pagar para ter um e-mail corporativo, usando a própria solução do GoDaddy, ou você pode configurar alguma externa, como o [Google Apps for Domains](http://google.com/a/). Já na parte gratuita, você tem duas opções: hospedar você mesmo seu servidor de e-mail (o que tecnicamente nem é gratuito, já que você tá pagando o hosting) ou usar os famigerados **E-mails de Redirecionamento**, esse de graça mesmo.

Os e-mails de redirecionamento, como o nome já denuncia, precisam de um outro e-mail de destino, como por exemplo um **Gmail**. Todos e-mails recebidos pelo e-mail de redirecionamento são encaminhados diretamente para sua caixa de entrada do e-mail de destino. A parte triste é que a outra via não funciona: você não consegue mandar e-mails por contas de redirecionamento. Só receber e automaticamente encaminhar.

**Bem, _teoricamente _você não consegue.**

Usando bastante paciência e a funcionalidade de _Alias _que o Gmail possui, iremos configurar um e-mail de redirecionamento para receber **e enviar** e-mails via uma conta do Gmail.

Separe sua próxima hora para invocar esse espírito.

#### Parte 0: O básico

A parte 0 é o mínimo que você precisa fazer. Ela é bem básica — e de certa forma, óbvia — para fazer tudo funcionar. Você vai precisar:

*   1 conta do Gmail
*   1 domínio no GoDaddy, com o redirecionamento de e-mail configurado
*   1 Personal Computer ou Macintosh. Não dá pra fazer do celular.
*   1 Long Neck de Heineken (recomendado)

Configurar o redirecionamento é o trivial, feito pelo painel de controle do GoDaddy. Por lá você vai dizer qual o e-mail **_meuemail@meudominio.xyz_** redirecionará para **_meugmail@gmail.com_**_. _Após configurar, espere um pouco e teste para ter certeza que o redirecionamento está funcionando.

Após estar tudo testado, siga em frente e olhe para o lado.

#### Parte 1: A segurança

Se você usa [autenticação de duas etapas](https://www.google.com.br/landing/2step/), você não vai sofrer tanto para essa primeira parte. Se não, bem. Você vai ter que se acostumar.

**#0:** Você **precisa **da autenticação de duas etapas ativa na sua conta Google para o método que estamos usando, pois precisamos criar uma** senha de aplicativo** específica para seu Gmail. E essa opção só é habilitada na sua conta quando a autenticação de dois fatores está devidamente configurada.

Se você ainda não tem 2FA ativo, pare de ler agora, [clique aqui](https://accounts.google.com/SmsAuthConfig) e configure para sua conta Google. Se você já tem, continue lendo.

#1: Vá no painel da sua conta Google ([https://myaccount.google.com](https://myaccount.google.com)) e clique em “**Login e segurança**”:

<figure>![](https://cdn-images-1.medium.com/max/374/1*T7dUmLcMY0npWqmDjFGpLg.png)</figure>

**#2:** Procure por “**Senhas de app**” na seção “**Como fazer login no Google**”, e clique nele:

<figure>![](https://cdn-images-1.medium.com/max/591/1*8fIun_2qgLiwmiSqKGVewQ.png)</figure>

O Google vai pedir sua senha, informe e continue.

**#3:** Na parte em baixo do box dessa nova página, clique em “Selecionar app” e depois, clique em “Outros”:

<figure>![](https://cdn-images-1.medium.com/max/487/1*Fqc7m2IfJ78IxpSva4vksA.png)</figure>

Após clicar, preencha com um nome. Ele serve apenas de referência, não precisa ser um nome em específico. Após definir o nome, clique em **Gerar**.

<figure>![](https://cdn-images-1.medium.com/max/439/1*ypt3AVSwNdYrJiAnxrVU5A.png)</figure>

_So far, so good. _Irá aparecer uma janelinha com uma senha de 16 caracteres. **Anote ela** que vamos precisar dela em breve.

<figure>![](https://cdn-images-1.medium.com/max/642/1*cd5sOGuNyDjx6NzDwThTug.png)<figcaption>Nem tenta, jovem. Já revoguei essa senha.</figcaption></figure>

Parabéns padawan. Cumprimos a primeira etapa. Vamos pro castelo que está a princesa.

#### Parte 2: Escadaria da configuração

**#0**: Entre no seu Gmail e vá em **Configurações &gt; Contas e Importação** e aperte em “**Adicionar outro endereço de e-mail que você possui**”

<figure>![](https://cdn-images-1.medium.com/max/945/1*jzgcVGaWHhWOF4BXmrDbCg.png)</figure>

**#1:** Bem-vindo a 2007! Com esse**_ POP-UP (!!!)_** maravilhoso que acaba de abrir, iremos começar a configurar de verdade nosso e-mail. Todo cuidado, carinho e atenção é importante agora.

<figure>![](https://cdn-images-1.medium.com/max/516/1*7WojnLdnEMudYe13VdCWIA.png)<figcaption>Essa feature, apesar de relativamente desconhecida, existe desde sempre no Gmail. Acho que nunca atualizaram.</figcaption></figure>

Preencha os campos como indicado:

*   Coloque o nome da conta. No meu caso, por exemplo, é “Joselito Júnior” mesmo. Esse nome é o que aparece no envio/recebimento de e-mails.
*   Coloque o** e-mail de redirecionamento**. O do **seu domínio**.

Se você está seguro que preencheu devidamente, clique em “Próxima etapa”

**#2:** Agora vamos configurar o servidor SMTP. Mesmo que você nem faça ideia do que SMTP é.

<figure>![](https://cdn-images-1.medium.com/max/525/1*fG4_btgiXS3kqnMd6sOuBw.png)<figcaption>Se o cuidado já tinha que ser grande antes, agora triplique-o.</figcaption></figure>

A primeira coisa a se verificar é se o seu domínio está aparecendo no _pop-up_, na parte destacada em verde do _screenshot _acima. Se está, ótimo. Se não, volte uma casa e configure a primeira tela novamente.

A segunda coisa a se fazer é **apagar **todo o conteúdo das caixas de texto, e preenche-las da seguinte forma:

*   Servidor de SMTP: **smtp.gmail.com** (_exatamente _dessa forma)
*   Nome de usuário: **_meugmail@gmail.com_** (NÃO é o seu e-mail de redirecionamento, é seu Gmail. No meu caso, seria joselitojunior@gmail.com)
*   Senha: usaremos a **senha gerada **na parte 1 desse tutorial.

Se tá tudo configurado com carinho, clique em “**Adicionar conta**”.

É possível que tenha dado ruim agora. Há dois erros mais prováveis:

*   Se deu erro de **DNS**, verifique se você trocou o endereço do SMTP
*   Se deu erro de **autenticação**, a senha gerada está errada. Repita o processo da parte 1.

Se tá tudo muito bom, tudo muito bem, você deve ter sido redirecionado para outra tela. Vem, jovem.

#### Parte 3: Honras e glórias

Se você foi redirecionado para a tela “ **Verifique a confirmação e adicione seu endereço de e-mail”** então é só correr pro abraço. Ou quase.

<figure>![](https://cdn-images-1.medium.com/max/695/1*ZponW4sEgnhMQmuNWtGvMQ.png)</figure>

Pra não dizer que não precisa fazer mais nada, a única coisa que resta a fazer é clicar num link de confirmação que o Gmail mandou para a sua própria caixa de entrada (afinal, no Passo 0, configuramos o redirecionamento). A partir desse momento o seu e-mail irá aparecer **Contas e importação**, e na hora de envio você vai poder definir de qual conta você pretende enviar seus e-mails.

<figure>![](https://cdn-images-1.medium.com/max/598/1*aTf1DZfg6h_1ZkE2tQ8RWw.png)<figcaption>É só clicar ali em “De”, meu jovem.</figcaption></figure>

#### Parte 4: Seja feliz

Depois dessa _via-crúcis_, está tudo funcionando e pronto pra uso para **envio e recebimento de e-mails grátis com seu domínio**. (vem Google, vem.)

Aproveite seu novo e-mail grátis, e que não é do [Bol](http://bol.com.br). O céu é o limite.

_Agradecimentos ao_**_ TJ Kelly_**_, semideus que _[_desenvolveu a receita_](http://www.tjkelly.com/blog/gmail-godaddy-email-forwarding/)_ desse processo maligno e pecaminoso de configuração._

![](https://medium.com/_/stat?event=post.clientViewed&amp;referrerSource=full_rss&amp;postId=1681f355d709)