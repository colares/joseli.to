---
title: Blog novo no ar!
date: 2017-07-02 17:52:47
tags:
 - Código
 - Mudanças
---
Olá você! Seja bem-vindo ao último release deste humilde blog. Como de costume, não está realmente pronto, mas quando é que algo está pronto, afinal?

Refiz por dois motivos: o primeiro é que de tempos em tempos eu gosto de renovar as coisas. O segundo, e principal, é que eu não estava satisfeito com o stack anterior que o blog 
estava. Sentia que era um canhão pra matar formiga, e principalmente que eu não estava explorando ele o suficiente para utilizar as tecnologias que eu falava nele próprio. Isso de casa de ferreiro o espeto ser de pau não tá com nada.

# Deixa eu apresentar a casa para você:
- O blog e o site não são mais separados: isso já vinha da última versão, mas agora está mais claro que tá tudo junto e misturado.
- O site é um **Progressive Web App**: isso significa que se você por algum motivo quiser adicionar ele na sua homescreen, você pode e ainda vai ficar um ícone bonitinho no seu launcher.
- Você pode receber **Notificações**: por ser um PWA, você receberá notificações de conteúdos meus toda vez que eles saírem. Claro, você tem que deixar: aperte o sininho no menu ou no rodapé de cada post e ative as notificações. Funciona tanto no celular quanto no desktop (se seu navegador deixar).
- Ele funciona **Offline**: Esse site é um humilde local de compartilhamento de conteúdo. Nunca se sabe quando você vai precisar, certo? Então ele automaticamente salva o conteúdo que você visita para você poder ler depois. Você não precisa fazer nada, só de acessar o post já está valendo.
- As páginas do site são **AMPs**: O projeto de Accelerated Mobile Pages é o que eu mais tenho curtido e falado nos últimos tempos, e tentei explorar ao máximo isso nesse bloguinho. Todas as paginas que você está acessando são AMPs de primeira classe, ou seja, não é que existe a versão "normal" e a versão "AMP" como você normalmente vê por aí. Há só a versão AMP. Isso só não é possivel como você está literalmente vendo uma diante dos seus olhos.

**Ou seja, site inteiro foi feito pra ser uma hipócrita confusão organizada. Ele é um PWA que não é SPA e todas as páginas são AMPs, ou seja, só tem CSS inline, não tem JS externo, mas tem ServiceWorker.** Se você entendeu alguma coisa deixa nos comentários.

# O Stack
Tudo aqui foi feito com o Hexo para gerar o site estático e... só. Cito o VSCode, talvez? Não foi usado nenhum framework específico que foi lançado semana passada ou alguma configuração absurda do Babel. Todo JavaScript utilizado provém apenas do Projeto AMP, além de um ServiceWorker simplezinho.

Em posts futuros irei explicar em detalhes alguns tweaks feito no processo (eterno) da construção desse espaço virtual na Internet.

# Open Source mesmo
O site é hospedado no GitHub Pages e o código fonte está disponível no GitHub. Isso permite duas coisas fantásticas:

- **Abrir Issues**: você pode abrir uma issue no repositório do site pra informar algum problema no websítio, ou quer fazer uma sugestão de post/conteúdo
- **Editar Posts**: no rodapé de cada post além do link pra ativar as notificações você tem um link direto para poder editar o post. Isso é bem útil pra mim, dado que não reviso meus textos e typos são frequentes, então você pode resolver pra mim e mandar um PR. Você também pode fazer um *fork + remix* do post no seu blog direto do GitHub. E mais, isso facilita a vida até de quem copia integralmente meus textos sem autorização: você vai conseguir copiar agora diretamente do markdown fonte!

# Início
A conclusão é o começo. Este sítio demorou um bom tempo para ser feito e eu farei meu melhor para que seja bem utilizado, principalmente por você aí que está lendo esse texto. Assine as notificações e volte aqui mais vezes, que sempre vai ter coisa legal (quase semp- ok, raramente, mas vai ter).
