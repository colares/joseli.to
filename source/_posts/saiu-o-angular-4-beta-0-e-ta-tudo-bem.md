---
title: Saiu o Angular 4 beta 0. E tá tudo bem.
tags:
  - Código
  - angular
  - framework
  - ionic
  - versão
date: 2016-12-16 22:48:14
---

_Ou “Como Não Se Desesperar Com Um Versionamento Mal Feito”_

O Angular atualmente é o Lula dos frameworks de JavaScript. E nem é por questão ideológica, ou algo do gênero, mas repare, é por Angular 2 no título que é _clique &amp; polêmica_. Poderia aumentar o paralelo: o Angular já foi muito idolatrado, agora nem tanto. Tem gente que acha que morreu (ou que vai ser preso amanhã), e tem seguidores fervorosos até o dia de hoje.

O que política tem a ver com versionamento? **Isso mesmo, nada.**<span id="more-6"></span>

Eu costumo comentar ao falar de Angular 2 no [Ionic Bootcamp](http://ionicbootcamp.com) que o Angular 2 só tem o mesmo do Angular 1 porque foi o mesmo time que fez, e eles servem pra mesma coisa (ok, além do nome também ser ~forte). Mas, pra todos efeitos, são frameworks completamente distintos.

Pro mal ou pro bem o Angular 2 tá aí e veio pra ficar. E ontem [saiu o primeiro beta](https://github.com/angular/angular/blob/master/CHANGELOG.md) da nova versão do Angular, a 4\. Sim, quatro. Do dois pra quatro.

<figure>![](https://cdn-images-1.medium.com/max/389/1*l3DXpKMHeCJW6_7vyUYodg.gif)</figure>

Calma.

#### O que aconteceu com a versão três e a boa e velha ordem dos números naturais?

Até o momento da publicação desse post, o número após o 2 realmente é o 3.

O Angular, bem como a maioria dos projetos ~sérios~ usa o versionamento [SemVer](http://semver.org/) (claro, isso se tornou verdade de fato a partir da 2.x), que de fato atribui um significado específico para cada número no release:

<figure>![](https://cdn-images-1.medium.com/max/640/1*UdZfbqkEjC6ITUDhDcvUJw.png)<figcaption>Tal qual a Bel Pesce, o SemVer tem vários Majors e Minors, mas não tem realmente um PhD no MIT</figcaption></figure>

Como o time do Angular tá levando a**_ sério mesmo_** esse papo do SemVer, qualquer **_Breaking Change_**, por menor que pareça, é relevante e justifica uma mudança de versão. É aquele papo de que não tem mentira grande nem pequena, é tudo mentira igual.

A mudança de agora é a alteração na versão do TypeScript utilizada. Atualmente, na versão 2.3.x o Angular utiliza a versão 1.8 do TypeScript. A mudança prevê a alteração para a 2.1 ou até, quem sabe, para a 2.2\. Só o tempo dirá.

Isso explica o pulo de versão, mas não explica o 4\. Mas o _@angular/router_ explica. Todos os packages no npm do _@angular_ estão alinhados com a versão 2.3.x, menos o _router_. Por algum motivo (e alguns esporros), o router está na versão 3.3.x. Pra deixar todo mundo alinhado no mesmo número de versão, e batendo com o que o SemVer manda (um major release tem que ser x.0.0), a nova versão precisa ser a 4.0.0.

#### Isso de numeração já virou loucura faz tempo

Versionamento é uma coisa estranha. Pra variar, quando envolve a Web, piora, já que a gente é todo apressadinho.

O iOS está no 10, Windows e macOS também no mesmo número, já o Android está no 7.

Mas o Chrome já tá no 55\. O Firefox no 50\. E o que falar do React, que tá na 15.4.0? Acho que só o Ember se salva, pra variar.

Então, a grande lição sobre as versões são: elas na real mesmo não importam tanto assim. Só quando aparece bug.

Então relaxa: a mudança do 2 pro 4 não será essa porrada que foi do 1 pro 2\. É uma mudança contínua e progressiva. Update daquele clássico mesmo, de raiz. Retrocompatibilidade garantida e só uma mudança ou outra ali na estrutura, pra implementar as coisas novas que chegaram.

#### É só “Angular”

Como o time recomenda, o nome a ser utilizado é só Angular. Não Angular 2, não Angular 4, não Angular N. Só, Angular.

É difícil se acostumar a um primeiro momento, principalmente dada a relevância que o Angular 1 ainda tem (o que é uma pena na minha humilde opinião). Quem sabe com a chegada do 4, de chamar só de “Angular” fica mais natural.

A previsão é ter um Major Release a cada 6 meses. Então, se do contrário de todas as previsões o mundo não acabar, lá pro início de 2018, já estaremos na versão 6 na ponta da agulha.

_Quantos frameworks será que morrem daqui pra 2018? _**_Fica a dúvida._**