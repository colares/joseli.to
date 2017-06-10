---
title: Como é programar em JavaScript em 2016
tags:
  - Código
  - Devaneios
  - es6
  - javascript
date: 2016-10-05 22:48:57
---

> **_Esse artigo é uma tradução totalmente livre e adaptada de _**[**_“How it feels to learn Javascript in 2016”_**](https://hackernoon.com/how-it-feels-to-learn-javascript-in-2016-d3a717dd577f#.cx19ga9vu)**_, publicada na Hackernoon. Provavelmente nenhuma nova biblioteca foi criada enquanto esse artigo estava sendo escrito. Ou não._**

Era uma terça-feira e chovia muito. Numa conversa entre dois amigos, um desenvolvedor frontend e um backend…

Man, seguinte, eu peguei um freela aí de um projetinho web pra dar uma ajuda nas finanças, sabe como é…

_A crise tá foda, né?_

Então… Mas como você sabe, faz um bom tempo que eu não mexo com web e ouvi muito sobre as mudanças que rolaram nos últimos tempos. Tô ligado que você manja muito do rolê de ser webdesigner, né?

_O termo atual é “Engenheiro Front End” mas sim, é isso mesmo. Mudou bastante. Dá pra fazer tudo com JavaScript, acabei de voltar da BrazilJS e, cara, nunca me senti tão bem em conhecer o que há de mais novo na web. Dá pra fazer de players de música com aqueles visualizers foda e até controlar drones. A gente consegue fazer o que a gente quiser com JS, o céu é o limite._<span id="more-8"></span>

Foda. Então, eu quero fazer uma página simples que vai mostrar as últimas atividades dos usuários, pra uma rede social aí. Tem uma API REST molezinha que basta fazer aquela chamada do sucesso, pegar os dados e mostrar numa tabela simples, que possa ser filtrada. Também preciso atualizar ela se rolar alguma mudança no servidor. Eu tava pensando se era uma boa usar jQuery pra pegar os dados via AJAX e jogar eles na tela.

_Não cara, pelo amor de deus. Ninguém usa jQuery mais. Você devia tentar aprender React, estamos em 2016!_

Beleza. O que é React?

_React é uma biblioteca foda feita por uma galera do Facebook, que te deixa completamente no controle da tua aplicação. Ela deixa tu manipular qualquer alteração que rola na view de um jeito super fácil. E nem vou falar da performance, é incrível._

Porra, gostei ein! Eu posso usar React pra exibir os dados do servidor, então?

_Sim, mas primeiro você precisa adicionar o React e o React DOM como bibliotecas na sua página._

Ué, duas bibliotecas?

_Sim, uma é o React mesmo, a outra é pra manipular o DOM, que você pode escrever em JSX._

O que é JSX?

_JSX é só uma extensão do JavaScript que parece XML. Pensa que é tipo um HTML, só que melhor. É outro jeito de descrever o DOM._

Qual o problema do HTML?

_É 2016 cara, ninguém escreve em HTML diretamente._

Ok. Então se eu adicionar essas duas bibliotecas é só usar o React?

_Não exatamente. Você precisa adicionar o Babel, e aí sim você va puder usar o React._

Outra biblioteca? O que é o Babel?

_Ah, o Babel é um transpiler que permite você direcionar seu código JavaScript para outras versões específicas do JavaScript. Você não PRECISA incluir o Babel pra usar o ReactJS, mas se você não colocar, você vai estar limitado a usar ES5, e por favor né, vamo falar sério, é 2016, você tem que tá programando em ES2016 feito todo mundo, porra._

ES5? ES2016? Eu tô ficando perdido. O que é ES5 e ES2016?

_ES5 significa ECMAScript 5\. É a versão que a maioria da galera direciona o código transpilado pois é a versão que é completamente implementada pela maioria dos navegadores atuais._

ECMAScript?

_Sim, cê tá ligado. O JavaScript é um dialeto do ECMAScript desde 1999, uma evolução pra 1995, quando ainda era chamado de Livescript e só funcionava no Netscape. Era uma confusão da porra naquele tempo, mas felizmente as coisas entraram no eixo e agora tudo está mais claro. A gente tem 7 edições do ECMA desde essa padronização._

7 edições. Beleza. E o ES5 e ES2016 são?

_A quinta e a sétima implementação._

E a sexta?

_A sexta é o ES6\. Tipo, cada edição é um superset da edição anterior, então se você tá usando ES2016 tá de boa, você tá usando tudo da versão anterior também._

Entendi, então não dá pra usar ES6

_Olha, dar, dar… dá. Mas pra usar funcionalidades como async e await precisa da ES2016\. Do contrário, você vai tá limitado pelos geradores do ES6 que usam co-rotinas pra bloquear chamadas assíncronas, só assim dá pra ter um controle de fluxo bom._

Ok, eu não faço a mais puta ideia do que caralhos você acabou de falar. Todos esses nomes estão extremamente confusos. Olha, eu só quero carregar uns dados de um servidor. Era só adicionar o jQuery via um CDN da vida e pegar os dados via AJAX. Não dá pra só fazer isso?

_Cara, é 2016\. Ninguém usa jQuery mais, o código fica horroroso. Todo mundo sabe disso._

Certo. Então minha alternativa é carregar três bibliotecas para carregar dados e preencher uma tabela feita em HTML?

_JSX._

Que seja.

_Sim. Mas vê só, você pode colocar essas bibliotecas por um gerenciador de módulos, aí ele faz um bundle transformando tudo num arquivo só._

Saquei. E o que é um gerenciador de módulos?

_A definição em si depende do ambiente que você tá executando, mas na web isso geralmente significa qualquer coisa que suporte os módulos AMD ou CommonJS._

Ah, claro! E AMD e CommonJS são…?

_Definições. Existem maneiras de descrever como várias bibliotecas JavaScript interagem entre si. Você sabe, exports e requires? Você pode escrever vários arquivos JS separados e defini-los via a API AMD ou do CommonJS e usar algo tipo o Browserify pra fazer o bundle._

Faz sentido… eu acho. O que é o Browserify?

_É uma ferramenta foda que permite você a fazer um bundle de módulos do CommonJS descritos como dependências de um projeto e rodá-los diretamente do navegador. Ele foi criado pois a maioria da galera publica essas dependências no npm registry._

npm registry?

_É uma lista enorme de repositórios onde um pessoal foda posta códigos e dependências como módulos. O React tá lá, por exemplo._

Ahh, tipo um CDN?

_Nah. É tipo um banco de dados centralizado onde qualquer um consegue publicar e baixar bibliotecas, aí você usa localmente pra desenvolvimento. Você pode dar upload pra uma CDN depois, quando tiver em produção._

Entendi, é tipo o Bower!

_É… mas é 2016\. Ninguém usa mais o Bower._

Tô sacando. Então. Eu preciso baixar as bibliotecas via npm?

_Isso. No caso, se você vai usar o React, você baixa o módulo e importa ele no seu código. É basicamente assim pra qualquer outra biblioteca JavaScript popular._

Tipo o Angular!

_O Angular é tão 2015\. Mas sim. Angular tá lá, junto do VueJS ou RxJS e outra turminha da pesada. Quer saber mais deles?_

Vamos focar no React. Eu já tô aprendendo coisas demais. Então, eu instalo os módulos com o npm e uso com o Browserify, né?

_Sim._

Parece um negócio complicado demais pra só juntar umas dependências. Muito trabalho manual

_Realmente é, é por isso que você tem que usar um automatizador de tarefas, tipo o Grunt ou Gulp ou o Broccoli. Na verdade, esquece o Grunt. Com eles dá pra automatizar o uso do Browserify. Dá pra usar até o Mimosa._

Grunt? Gulp? Broccoli? Mimosa? Que merda que tu tá falando?

_Task managers. Mas, na real, eles não são mais tão legais feito eram. A gente usava ele um tempo atrás, tipo 2015, ai a gente começou a usar Makefiles, depois npm scripts, e agora a gente tá fazendo tudo via Webpack._

Makefiles? Javascript virou C e C++?

_É… Aparentemente na web a gente gosta de fazer as coisas complicadas, depois voltar ao básico e se manter nesse loop. A gente faz isso todo ano, então se tu quiser, espera um pouco que a gente vai implementar assembly na web em um ano ou dois, no máximo._

Não sei nem o que pensar. E sim… Webpack?

_É tipo o Browserify, só que melhor. É outro gerenciador de módulos com funcionalidades de gerenciador de tarefas também._

Ok. É melhor, pois?

_Bem, não sei se melhor é a palavra, é mais dependendo da sua opinião de como suas dependências devem estar jutinhas. Webpack permite você usar com módulos diferentes, targets diferentes, não só CommonJS, por exemplo. Dá pra usar instâncias nativas do ES6._

É bem confusa essa porra de CommonJS/ES6

_Todo mundo ta’confuso. Mas relaxa, nada importa com o SystemJS._

Jesus Cristo. Outra-coisa-js. Beleza, o que é SystemJS?

_Bem, diferentemente do Browserify e do Webpack 1.x, o System é um carregador de módulos dinâmico, que permite você integrad várias dependencias em vários arquivos diferentes, ao invés de fazer um arquivo JS enorme gigante._

Porra, mas a gente fazer um arquivo JS só não era meio que o objetivo dessa putaria toda?

_Sim, mas com o HTTP/2 vindo a gente vai poder fazier várias HTTP requests ao mesmo tempo, então na real, ter vários arquivos é melhor._

Então por que a gente não coloca o JS das próprias bibliotecas direto??

_Não seria tão efetivo. Até dá pra botar, mas precisaria adicionar o Babel também._

Aff. E isso seria ruim, né?

_Sim. Você estaria pondo o JS inteiro do core do Babel, o que não seria nem um pouco eficiente pra producão. Em produção, você precisa executar uma série de tarefas pra deixar seu projeto pronto, tipo minificar os assets, passar um uglify, compilar o css, rodar um defer, també —_

Entendi, entendi. Então se você não coloca as bibliotecas diretamente num CDN, como você faz.

_Eu transpilaria isso do Typescript via Webpack + SystemJS + Babel._

Typescript? Achei que a gente tava falando até agora de JavaScript!

_TypeScript é JavaScript. Ou melhor, é um superset do JavaScript, mais especificamente o JS da versão ES6\. Cê sabe, e versão 6 que a gente falou agora pouco._

Caralho cara você tá querendo me foder? Você disse que o ES2016 já era um superset do ES6, por que a gente precisa dessa porra desse TypeScript agora?

_É porque isso permite pra gente usar JavaScript como uma linguagem tipada, e reduz os erros de runtimes. É 2016, já passou da hora de adicioar tipos ao seu código._

E Typescript evidentemente faz isso.

_O Flow também faz, mas ele só checa o tipo. Typescript é um superset inteiro do JavaScript que precisa ser compilado._

… e Flow é?

_Um checador de tipos feito por uma galera do Facebook. Eles programaram em OCaml, afinal programação funcional é muto do caralho._

OCaml? Programação funcional?

_Cara, TODO MUNDO tá usando programação funcional! Como assim você não sabe? É 2016, velho. Funções de alta ordem? Currying? Lambda? Monads?_

Eu não faço a mais puta ideia do que você tá falando.

_Beleza, beleza. Ninguém entende direito no começo. Olha, você só precisa saber que programação funcional é melhor do que Orientação a Objetos e é isso que a gente deveria estar usando em 2016._

[convertkit form=4977436]

Eu aprendi Orientação a Objetos na faculdade, não era bom?

_Java também era antes da Oracle. Tipo, OOP já foi bom, mas teve seus dias e até tem seus usos, mas hoje em dia todo mundo notou que mudar o estado da aplicação é, tipo, chutar filhotinhos de cachorro. Então todo mundo está trabalhando com objetos imutáveis e programação funcional. Lembra quando a galera do Haskell fazia isso e a gente zoava que não dava pra usar no mundo real? Bem, ainda não dá com Haskell, mas a gente tá tentando fazer via JavaScript usando bibliotecas como a Ramda._

Cara, tu tá de putaria comigo e começou a inventar nomes de coisas na tua cabeça né? Ramda?

_-Sim. É tipo Lambda, só que com R. É aquela biblioteca que o David Chambers inventou._

David quem?

_-David Chambers. Um cara show. Curto o cabelo dele, muito sedoso. Você devia seguir ele no GitHub. Devia seguir o Erik Meijer também se você tiver nessa de levar programação funcional a sério_

Erik Meij…?

_Cara, como assim cê não conhece o Erik Meijer? ELE TEM AS MELHORES CAMISETAS DO PLANETA!_

<figure>![](https://cdn-images-1.medium.com/max/830/1*NxXpxBvlz3KNupTmqHgWvQ.png)</figure>

_Você devia seguir também o TJ, Jash Kenas, Sindre Sorhus, Paul Irish, Addy Osmani e principalmente o Zeno Rocha._

Olha, Ok. Vamos parar por aqui. Tá tudo muito bom, tá tudo muito bem, mas realmente eu acho que isso tá complicado demais pra alguém que só quer pegar uns dados de uma API REST e jogar numa tabela. Eu tenho certeza que eu não preciso seguir todo esse pessoal pra fazer isso. Vamos voltar pro React. Como eu puxo algum dado do servidor via React, é parecido com o $.get()?

_Bem, na verdade você não consegue fazer nenhum request com o React._

Ah, vai tomar no cu.

_O React serve pra exibir os dados, é uma biblioteca de componentes. Só._

Então que porra a gente usa pra pegar os dados?

_Ah cara, nada mais nada menos do que o mais puro JavaScript, é só usar Fetch_

Olha, eu ia zoar que chamar de Fetch algo pra dar fetch é zoado, mas dada a quantidade de nome que você vomitou eu vou ficar calado.

_Né? Fetch é a implementação nativa para fazer XMLHttpRequests para um servidor._

Ah, AJAX.

_Sim, e não. AJAX é só o uso dos XMLHttpRequests. Mas sim. Fetch permite você a fazer requisições em AJAX, mas baseadas em promessas, o que é ótimo pra evitar o famoso callback hell._

Inferno de callbacks?

_Sim. Toda vez que você realiza um request assíncrono para o servidor, você precisa esperar a resposta, o que te obriga a adicionar funções dentro de funções, o que é um inferno pra qualquer aplicativo mais robusto._

E se a gente usar promessas isso se resolve?

_Exato. Manipulando os callbacks via promessas é mais fácil de escrever e ler o código, além de ser mais simples de testar. E também rola de ele fazer vários requests ao mesmo tempo e esperar todas ficarem carregadas pra executar alguma coisa._

O Fetch faz isso tudo?

_Sim, mas só se você tiver usando um navegador com as implementações mais novas do ES2016, que é basicamente o que ninguém tem. Então a gente precisa por um polyfill pro Fetch, ou usar Request, talvez o Bluebird ou o Axios._

Velho, em nome de Jesus, quantas bibliotecas eu preciso saber? Quantas existem?

_Cara, é 2016\. É JavaScript. Tem milhões de bibliotecas pra fazer a mesma coisa. A gente sabe fazer biblioteca. A gente sabe fazer biblioteca pra caralho. A gente faz muita biblioteca e não é pouco._

Ok… Bluebird, Request, Axios? Na real eu nem sei mais porquê tô perguntando.

_São bibliotecas que permitem executar XMLHttpRequests que retornam promessas._

Eu ouvi que jQuery tá retornando promessas com o AJ —

_Shh, a gente não usa essa palavra que começa com “jQ” em 2016\. Use Fetch, e repita comigo “você é livre”. Se precisar de polyfill, coloque. Ou use Bluebird, Request, Axios, que seja. Ai gerencie isso com await e async e aí é só correr pro abraço._

Eu ainda não entendi o que e await.

_Await permite você a bloquear uma chamada assíncrona, permitindo você a ter um controle melhor quando os dados vem do servidor, além de deixar o código mais legivel. É muito foda, você só precisa ter certeza de selecionar o stage-3 como preset no Babel ou usar os plugins syntax-async-functions e transform-async-to-generator, tem lá no npm._

Isso já ta ficando insano.

_Insano? Insano é ter que precisar precompilar TypeScript e transpilar isso pra Babel pra conseguir usar await. Vê que trabalho. Nunca que eu vou perder tempo fazendo isso._

Isso não deveria estar no TypeScript?

_Deveria, e está na versão 2.0\. Mas na 1.7 que é a que quase todo mundo usa no momento, ela só foca no ES6, então se você quer usar await no navegador, primeiro você precisa compilar seu Typescript pra ES6 e depois fazer o transpile dele via Babel pra ES5._

Eu não sei mais o que falar.

_Olha, é fácil. Programe tudo em TypeScript. Todos os módulos que usam Fetch, compile eles pra ES6, faça o transpile pro Babel (não esquecendo do stage-3) e carregue eles via SystemJS. Se você não tiver o Fetch, usa polyfill, Bluebird, Request… já falei._

Temos conceitos bem diferentes sobre o que é “fácil”. Então, depois de eu fazer isso aí, invocar Exu Caveirinha e tomar uma cachaça eu finalmente consigo obter os dados né? Aí é só usar o React pra renderizar, certo?

_Teu app vai trabalhar com mudança de estados?_

Caralho cara, eu não faço ideia. Eu só quero mostrar os dados numa tabela. Acho que não.

_Ah, ainda bem! Se não eu ia ter que explicar Flux e as implementações tipo o Flummox, Alt, Fluxible&#8230; Se bem que na real o ideal é usar Redux._

Você tá inventando essa porra desses nomes né.

_Olha, se é realmente SÓ exibir dados, você nem precisa do React pra começar. É mais tranquilo usar algum template engine, eu acho._

Depois de todo pentateuco do JavaScript atual ser ditado em minha frente você tá falando que eu não preciso de nada disso? Cê ta de sacanagem com a minha cara, o que foi que eu te fiz?

_Eu só tava explicando o que você podia usar, ué._

Para. Só para.

_Tipo, mesmo só usando algum template engine, eu ainda pegaria o combo TypeScript + SystemJS + Babel se eu fosse você._

Cara, eu só quero pegar as informações de um servidor e exibir numa tabela. Eu não quero a combinação de códigos pra pegar o Jetpack no GTA.

_Qual template engine você manja?_

Não consigo lembrar de cabeça. Faz tempo que não trabalho com a web?

_jTemplates? jQote? PURE?_

Err… não

_Transparency? JSRender? MarkupJS? KnockoutJS? Knockout foi a primeira a ter two-way databinding._

Próximas

_PlatesJS? jQuery-tmpl? Handlebars? Tem gente que ainda usa._

Handlebars não me é estranho, mas não era essa…

_Mustache, underscore? Acho que loadash também já foi, mas 2014 já passou_

Err&#8230; não.

_Jade? DustJS?_

Não

_DotJS? EJS?_

Não

_-Nunjucks? ECT?_

Não

_Ainda bem, ninguém gosta de Coffeescript mesmo. Jade?_

Você já tinha falado Jade.

_Eu queria dizer Pug. Que é Jade. Quer dizer, Jade agora chama Pug._

Não, nenhuma dessas… qual eu deveria usar?

_Provavelmente os templates nativos que já vem com o ES6._

Deixa eu ver, pra usar isso, eu preciso do ES6.

_Precisamente._

Que, dependendo do navegador, eu tenho que usar o Babel.

_Boa._

Que se eu quiser usar uma biblioteca, e não ter que colocar todo o código, eu preciso carregar ela como um módulo, via npm

_Estamos maravilhosamente bem._

Que precisa de Browserify, Wepback ou SystemJS.

_Isso. Ou Rollup.js que acabou de sair._

Que se não for usando o Webpack, eu tenho que usar algum task runner.

_Correto._

Mas como eu deveria estar usando programação funcional e linguagens tipadas, eu deveria primeiro programar em TypeScript e pré-compilar, ou usar esse tal de Flow.

_Isso, estamos indo bem._

E depois mandar meu código pro Babel se eu quiser usar await.

_Isso!_

Aí eu consigo usar Fetch, promessas, e toda a magia que o JavaScript de 2016 pode me proporcionar.

_Lembra do polyfill. E cuidado com o Safari que ele não tem isso implementado ainda._

Quer saber, cara. Foda-se. Foda-se toda essa merda. JavaScript que se foda. Eu não tenho paciência pra ficar aprendendo tanta coisa em JS pra uma operação tão simples quanto exibir uma tabela na tela.

_Tudo bem, em alguns anos a gente vai tá programando em Elm ou WebAssembly. JavaScript se pá logo logo morre._

Eu vou ficar é com meu backend mesmo. Eu não consigo aguentar tanta mudança o tempo todo, mal dá pra respirar. Se vocês acham que vão manter uma comunidade assim, cês tão fudido.

_A gente meio que sabe disso. Tudo bem. Você devia conhecer a comunidade de Python, então._

Por quê?

_Já ouviu falar do Python 3?_