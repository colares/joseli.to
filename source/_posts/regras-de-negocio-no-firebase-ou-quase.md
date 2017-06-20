---
title: Regras de negócio no Firebase (ou quase)
tags:
  - Código
  - firebase
date: 2016-09-29 02:07:26
---

_Porque ele é mais do que um Banco de Dados que atualiza sozinho._

<figure>![](https://cdn-images-1.medium.com/max/1024/1*mSfaQfUwDFCFyKPvFYEHOw.jpeg)</figure>

O **Firebase **é poderoso e acho que todo mundo hoje em dia está de acordo com isso. A versão 3.0 mostrou que não tá aí de brincadeira e já tem uma [galera topster](https://firebase.google.com/customers) usando em produção.

Mas se tem uma coisa confusa sobre o Firebase é sobre como a sua segurança e regras funcionam. Quem tá acostumado com um CRUD clássico, onde ele escreve as regras e validações antes daquele conteúdo que o usuário criou ir pra o banco de dados.

Alguns acham que a validação e implementação de regras de segurança devem ser do lado do **_frontend_**. Mais absurdo que isso, apenas aqueles que acham que o **Firebase **não faz qualquer verificação, e qualquer um que conseguir o conjunto de chaves vai pintar e bordar com seu _backend_.

Trago boas novas. É compreensível a dúvida já que praticamente todo conteúdo que existe sobre **Firebase **é demonstrando como fazer _get _e _set _de variável, e mostrando como é fofinho mudando os valores em tempo real. Quantas vezes eu não ouvi que o Firebase é top pra fazer um **Dashboardzinho**, mas pra projeto “_de verdade_” precisa de banco de dados “_de verdade_”. Parece até um eleitor do Trump falando (ou talvez do Dória).

Vem conhecer o **Firebase Rules.**<span id="more-11"></span>

<figure>![](https://cdn-images-1.medium.com/max/720/1*8yM-gC7g_fsX8ULyFZZebQ.jpeg)<figcaption>João Dória comendo coisas. Sem motivo.</figcaption></figure>

#### É tudo JavaScript mesmo

O Firebase Rules se utiliza de uma sintaxe própria para descrever as regras. Tal qual o próprio banco de dados, ele é um arquivo JSON enorme, onde usamos determinadas variáveis na estrutura de dados.

No seu console, vá em **Database **no menu lateral e clique na aba **Rules**. Logo quando você cria um projeto no Firebase, ele vai vir assim:

<pre>{ 
  "rules": {
    ".read": "auth != null",
    ".write": "auth != null"
  }
}</pre>

_“rules”_ é nosso objeto raiz, equivalente ao objeto raiz do banco. Tudo que estiver abaixo dele em hierarquia vai ser correspondido ao objeto no banco do Firebase.

Além disso, repare nas primeiras palavras reservadas que temos: _“.read”_ e _“.write”_. É isso mesmo que você tá pensando: _.read_ define as regras de leitura e _.write_ define as regras de escrita. Perceba também que a informação recebida sempre é uma **expressão que retorna um booleano**.

Ou seja, toda vez que alguma operação for realizada no banco de dados, o Firebase vai lá nas Rules ver quais são as regras aplicadas a aquele objeto, rodar a verificação e ver se ela passa ou não.

> Ok. Top. Mas como ele sabe quem foi que fez essa operação pra saber se ela vai ser válida?

Excelente pergunta. O código acima basicamente está dizendo que para ler e escrever, o usuário precisa estar autenticado. _“auth”_ é mais uma palavra reservada do Firebase, sendo esta uma representação do objeto de autenticação do usuário que está fazendo determinada requisição. Se _auth _não é null, então isso significa que o usuário está logado.

**E se eu quiser que todo mundo tenha acesso?

**Fácil. É só fazer algo mais ou menos assim:

<pre>{ 
  "rules": {
    ".read": "auth != null",
    ".write": "auth != null",
    "public": {
        ".read": true,
        ".write": true
    }
  }
}</pre>

Como sempre é retornado um valor booleano, o que estamos querendo dizer acima é que, o que está dentro do objeto “public” é acessível para leitura e escrita para qualquer pessoa que esteja acessando sua aplicação. Isso é maravilhoso e terrível se você souber (ou não) o que está fazendo.

#### Mais que autenticação

Usamos o _auth _como exemplo geral para verificar a segurança das coisas. Mas há outras formas de verificar sem utiliza-lo (ou utilizando ele em conjunto).

Por exemplo, você quer escrever um dado uma vez, e apenas uma vez, no banco. Ele pode até ser apagado, mas não pode ser sobrescrito. É só fazer algo assim:

<pre>".write": "!data.exists() || !newData.exists()"</pre>

Aqui conhecemos mais duas palavras reservadas: _data _e _newData_. O _data _representa o objeto que armazena o valor atual do nó. De maneira análoga, _newData _serve para representar o valor futuro do nó, caso a operação realmente se concretize, passando na validação.

#### Valide. Eu validaria.

Por fim, mas não menos importante, temos o _“.validate”_, que funciona de forma parecida tal qual nossos conhecidos _“.read”_ e _“.write”_. Como você bem adivinhou, ele serve para verificar se o conteúdo é valido conforme as suas regras.

Se você tá fazendo seu próprio Twitter e quer ter certeza que o usuário não vai digitar mais de 140 caracteres, faça isso aqui:

<pre>".validate": "newData.val().length &lt;= 140"</pre>

Quer validar se o usuário tá mandando um número, por exemplo? Mole.

<pre>".validate": "newData.isNumber()"</pre>

#### Está bom por hoje

Espero que você tenha entendido o básico do básico de segurança e validação do **Firebase**. Se você quer que eu faça uma versão mais avançada, aperta no coraçãozinho aqui no **Medium **e compartilha com o pessoal. Aí eu sei o conteúdo é legal e que vocês querem saber mais sobre (:

Hora de acabar com esse [medo bobo](https://www.youtube.com/watch?v=Jzl_nrTkfIM) de usar o Firebase.![](https://medium.com/_/stat?event=post.clientViewed&amp;referrerSource=full_rss&amp;postId=792739ca9279)