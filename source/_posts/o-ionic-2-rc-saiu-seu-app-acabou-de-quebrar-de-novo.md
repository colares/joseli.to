---
title: O Ionic 2 RC saiu! Seu @App acabou de quebrar (de novo)!
tags:
  - Código
  - atualização
  - ionic
  - versão
date: 2016-10-04 18:40:26
---

_Meu Webpack está MORTO, tens o que é necessário para esmagar o meu Rollup?_

<figure>![](https://cdn-images-1.medium.com/max/1024/0*LRaYtQ1WNh_9JUaS.png)</figure>

Nada como um **Release Candidate** para por um sorriso na cara de quem tá trabalhando com betas. Só quem viveu sabe as imagens de dor e sofrimento das últimas atualizações do Ionic 2\. Mas tudo compensa pra ver um projeto como esse crescer.

Vamos falar um pouquinho das mudanças desse RC0, **que olha, não foram poucas**.

#### **O Angular 2 final está entre nós**

Se tá liberado, vamo usar valendo! A gente já usava sem liberar, agora só tá organizado: as APIs estão finalizadas. Além disso, veio de brinde o **_@NgModules_** pro Ionic, que permite a gente escrever apenas uma vez algumas coisas que a gente tinha que repetir pra cada **_@Component_**, como por exemplo os providers.<span id="more-9"></span>

Além disso, o AoT do Angular 2 deixou os Apps rápidos feito foguetes. Provavelmente ele o maior motivo das mudanças de estruturas do **beta11 **pro **rc0**. Se você estava usando o beta e o app ficava um tempo considerável como uma página em branco (ou congelado na Splash Screen) antes de carregar, agora isso sumiu. Tipo assim:

#### Nova estrutura e processo de Build

O build mudou, baseado no scraffhold do _Create-React-App_, ele agora usa o **Rollup.js** no lugar do _Webpack _e **npm scripts** no lugar do _Gulp_. Felizmente, eles são retrocompatíveis, então você pode continuar a usar seus scripts do Gulp sem problemas.

Ou seja, basicamente, agora o Ionic te entrega um Workflow. Se você quiser usar, ótimo. Se não, você faz o seu do seu jeitinho.

A estrutura de pastas também mudou. Não temos mais a pasta _“app”_, e agora veio a incrível _“src”_, que trouxe junto uma pasta pra _assets _(uma coisa que a gente tinha que gerir ou manualmente, ou fazer algum script via gulp).

#### Outros pormenores

**Chegou o TypeScript 2.0 também**

**Mudaram os eventos de Lifecycle

**Pra você que ama programação reativa

**A navegação agora tem fila**

Isso significa que se você fizer isso aqui:

<pre>_navCtrl_.push(**Page1**);
_navCtrl_.push(**Page2**);</pre>

Vai rolar a transição pra página um, e depois de acabar, vai rolar a transição pra página dois. Antes ela ia pra página dois, diretamente.

#### Vários componentes mudaram também

*   Agora é **_&lt;button ion-button&gt;_**, não mais **_&lt;ion-button&gt;_**. Por motivos de usabilidade, porque ela importa.
*   O jeito de definir as cores também mudaram. Antes era **_&lt;ion-tabs primary&gt;_**, agora é **_&lt;ion-tabs color=”primary”&gt;_**. Quem já tentou mudar dinamicamente as cores de componentes nos betas deve ter percebido o inferno que é. Agora é só fazer um **_[color] _**e sucesso.
*   Botões com ícones agora precisam declarar que tem ícones com as propriedades **_ion-button_** e**_ icon-left|right|only_**. Isso melhora a performance da renderização, já que antes era necessário ver os filhos para poder estilizar os pais, agora isso é feito diretamente.
*   É um css só, **_main.css_**. Sem precisar ver dinamicamente qual plataforma está sendo executada. Tudo pra deixar mais rápido!

Tem mais uma porrada de coisa, se você for dar uma olhada no [CHANGELOG.md](https://github.com/driftyco/ionic/blob/master/CHANGELOG.md).

#### Quebrou tudo

Inclusive, seu app quebrou, então, atualize o Ionic-CLI com muito cuidado, amor e carinho.

Essa semana sai um tutorial, passo a passo, de como atualizar o app do beta pro RC.

**_Beijos de luz._**