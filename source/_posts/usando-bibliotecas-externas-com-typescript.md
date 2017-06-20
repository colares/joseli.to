---
title: Usando bibliotecas externas com TypeScript
tags:
  - Código
date: 2016-08-11 20:08:25
---

#### A dica de hoje é curtinha mais bem importante pra você que está iniciando seus trabalhos com Angular 2 (principalmente Ionic 2) e TypeScript.

<figure>![](https://cdn-images-1.medium.com/max/1024/0*YH3_xSZkvGlxv8Ef.jpg)</figure>

O JavaScript sempre foi o Luquita da Galera quando falamos de tipos. Sempre ouvimos que qual quer coisa é um _Object — _[ou quase qualquer coisa](http://www.2ality.com/2011/03/javascript-values-not-everything-is.html). Como tudo na vida, isso tem seu lado bom e seu lado ruim (tirando sorvete, que é a exceção que prova a regra).

No post, vou usar de base a criação de um projeto no **Ionic 2**. Mas o princípio é exatamente o mesmo usando o **Angular-CLI** ou algum outro _starter _que você anda usando por aí, já que em todos temos em comum o gerenciamento de pacotes via **NPM**.

Vamos criar um projeto e instalar, por exemplo, o **AngularFire 2**, já atualizado para o Angular 2 (com TypeScript). Também vamos instalar o SDK do **Firebase**, que é dependência do AngularFire:

Já inicializamos nosso_ App Incrível_, agora vamos começar a trabalhar no nele.

O código de uma página (ou uma View) do Ionic 2 é uma coisa mais ou menos assim (afinal, ela nada mais é que um _Component_):

Agora vamos importar as bibliotecas que instalamos lá no início do projeto. Adicionamos algumas coisas no cabeçalho do código…

aí é só definir algumas variáveis ne inicialização, e então nós já podemos compilar e tes…

<pre>**[ts]** Cannot find module 'angularfire2'.</pre>
<figure>![](https://cdn-images-1.medium.com/max/480/1*-amSAnpCo3HL09lv_Yh24A.jpeg)<figcaption>Ué?</figcaption></figure>

Aí no meio do caminho aparece uma daquelas pedras que faz você se questionar sobre toda sua carreira de desenvolvedor. _Céus, como assim o módulo não foi encontrado? Eu tenho certeza eu executei o comando de instalação. Será que eu executei mesmo? Sera que o npm tá funcionando? Qual o sentido da vida?_

Calma, tá tudo bem. Se fosse um** ES6/7** da vida já estaríamos rodando tudo sem maiores problemas. Mas estamos usando **TypeScript**, então temos certos compromissos com os **tipos**.

O TypeScript analisa seu código, fazendo type checking. E se você está utilizando um projeto externo, o qual os tipos não são primários nem compatíveis com os quais você criou, precisamos instalar as definições de tipos daquela biblioteca para que o TypeScript interprete seu código devidamente. É ai que entra em cena o [**Typings**](https://www.npmjs.com/package/typings).

O Typings instala definições (arquivos_ .d.ts_) de bibliotecas externas e as instala no seu projeto. Para tal, primeiramente devemos instalar globalmente o Typings no nosso sistema:

<pre>$ npm install -g typings</pre>

Após isso, devemos instalar as definições do AngularFire, que — por coincidência — a equipe cheirosa do Firebase disponibilizou [junto do SDK](https://firebase.google.com/support/release-notes/js#wzxhzdk4version_321_-_july_26_2016wzxhzdk5) no último release.

<pre>$ **typings **install file:node_modules/angularfire2/firebase3.d.ts --save --global &amp;&amp; **typings **install</pre>

Depois disso, é só correr pro abraço. Projeto compilando e funcionado. E sem usar **_:any_**.

#### Mas, e se a gente quiser ir além?

Ok ok, tudo isso funciona muito bem quando eu estou gerenciando minhas libs via NPM. Mas, e quando eu não tenho NPM? _Como faço pra usar jQuery??_

Primeiramente, parabéns pela ousadia de querer usar jQuery com TypeScript. Mas continuando, sim, é possível. O jQuery até tem um repositório oficial no NPM, então vamos usar um exemplo melhor (e porque não dizer mais real) com a [API do Google Maps](https://developers.google.com/maps/web/?hl=pt-br).

Há um wrapper da API no NPM, mas vamos no roots. Vai que o Google resolve mudar tudo amanhã?

Para tal, apresento-lhe o [**DefinitelyTyped**](http://definitelytyped.org/), que é um [repositório ](https://github.com/DefinitelyTyped/DefinitelyTyped)estupidamente grande de definições para bibliotecas que não possuem definições.

<figure>![](https://cdn-images-1.medium.com/max/1003/1*E_QCCxZ3yRoGFEGbdLPHSA.png)</figure>

Para instalar um repositorio do DT no seu projeto, é o mesmo comando do Typings:

<pre>$ **typings **install dt~google-maps --global
// o dt~ serve pra explicitar que estamos baixando do repositório do DefinitelyTyped</pre>

Prontinho! Agora o TypeScript vai reconhecer tranquilamente todas as chamadas da API de JavaScript do Google Maps.

Um viva a vida sem erros de tipo!