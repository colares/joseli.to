---
title: 'Material Design no Ionic 2, na força bruta'
tags:
  - Código
date: 2016-09-08 17:08:37
---

_Como definir o Material Design como padrão, mesmo no iOS, modificando Config do seu _**_@App_**

<figure>![](https://cdn-images-1.medium.com/max/1024/1*bk6rY40xsdgKk4tsT5wAUA.png)</figure>

O Ionic 2 é lindo. Sério. Principalmente nos seus componentes feitos usando os princípios do Material Design. Diferente do Ionic 1.x, onde teríamos que utilizar alguma biblioteca como o [Ionic Material](http://ionicmaterial.com), tudo já vem prontinho de fábrica pra a gente aproveitar.

Claro que os temas para iOS e Windows também estão lá, nada mudou. Mas se você está fazendo toda sua identidade visual baseada no Material, provavelmente você irá querer manter essa consistência entre plataformas.

Fazer isso no Ionic 2 é bem simples, utilizando o _Config _do módulo _ionicBootstrap, _que está no pacote_ ionic-angular_:

<pre>**import** { ionicBootstrap } from ‘ionic-angular’;</pre>

O _ionicBootstrap_ é equivalende ao Bootstrap do Angular 2, que “avisa” qual componente será o root da nossa aplicação. Ele já está devidamente importado e chamado no **app/app.ts** do seu aplicativo.

Vá para a última linha, e lá estará ele:

<pre>ionicBootstrap(BitBar);
// Por sinal, você já baixou o [**BitBar**](https://play.google.com/store/apps/details?id=space.joselito.bitbar)?</pre>

O _ionicBootstrap_ recebe (até) três parâmetros, o componente Root, os Custom Providers e o objeto Config. É deste último que iremos tratar no dia de hoje.

#### Config

O Config nada mais é do que um simples objeto onde definimos determinadas propriedades. A primeira coisa é adiciona-lo ao Bootstrap:

<pre>ionicBootstrap(BitBar, [], **{****}**);</pre>
<pre>// O Config é o terceiro parâmetro, então estamos passando um array vazio no parâmetro do Custom Providers. Trataremos dele em outro post.</pre>

Para implementarmos a ideia original do post, basta definirmos o _mode _como _“md”:_

<pre>ionicBootstrap(BitBar, [], **{
  mode: 'md'
}**);</pre>

Prontinho! Estamos avisando ao Ionic que queremos que o modo **sempre seja **o Material, independente da plataforma real do dispositivo utilizado.

Esse é só um exemplo do que o Config é capaz. Podemos por exemplo, forçar com que as abas apareçam sempre no topo, é só fazer isso aqui:

<pre>ionicBootstrap(BitBar, [], **{
  mode: 'md',
  tabsPlacement: 'top'**
**}**);</pre>

Quer usar o Material, mas acha os Ícones do iOS mais bonitinhos?

<pre>ionicBootstrap(BitBar, [], **{
  mode: 'md',
  iconMode: 'ios'**
**}**);</pre>
<pre>// Atenção, não é porque você pode que você deve.</pre>

[Na documentação oficial do Ionic 2 existem inúmeros exemplos](http://ionicframework.com/docs/v2/api/config/Config/) de como podemos utilizar o Config para manipularmos nosso App. Mas lembrem sempre, crianças, com grandes poderes vem grandes responsabilidades.