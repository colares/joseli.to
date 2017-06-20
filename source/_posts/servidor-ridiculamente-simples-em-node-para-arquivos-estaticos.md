---
title: Servidor (ridiculamente simples) em Node para arquivos estáticos
tags:
  - Código
  - npm
  - servidor
  - ssl
date: 2017-01-03 20:55:47
---

Hoje em dia iniciar um projeto em JS é quase um casamento seu com suas ferramentas, no qual você tem que passar alguns bons minutos (ou horas) pra configurar tudo e deixar tudo perfeitinho.

A vantagem disso é que _teoricamente _você só vai precisar fazer esse trabalho uma vez; porém nem sempre a gente quer, ou _precisa_, ter esse trabalho. Um dos melhores amigos de quem trabalha com conteúdo estático é o _SimpleHTTPServer _do Python, que nos permite levantar um servidor HTTP com uma facilidade absurda, além da sua grande vantagem de já estar pré-instalado virtualmente em qualquer máquina com um sistema UNIX.<span id="more-5"></span>

Se você está trabalhando só com um punhado de arquivos estáticos, com o _SHS_ em uma linha tava o _localhost _aberto no navegador. Porém o SHS não é a coisa — digamos — menos bugada do mundo, e também não tem tantas opções assim pra customizar as própriedades do servidor (ou até tenha, eu que não sou de Python que não sei mexer)

Pra manter tudo dentro de casa, existe o pacote [http-server](https://www.npmjs.com/package/http-server) disponível lá no npm, como de costume.

Tem a mesma praticidade do SHS, e apesar de não vir direto com o sistema, eu imagino que a essa altura do campeonato você tenha o npm instalado.

Além de menos bugado (apesar de ser em JS, né), ele oferece umas opções 100% show de bola e muito úteis, relacionadas com **CORS**, **SSL** e **Proxies**.

Mesmo que não seja de todo útil em projetos mais escaláveis, o [ictt-tweet-inline]http-server é uma daquelas ferramentas que vale a pena ter guardado pro &#8220;nunca se sabe&#8221;.[/ictt-tweet-inline]

Vai que né.