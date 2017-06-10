---
title: Como hospedar Progressive Web Apps no GitHub Pages
tags:
  - Código
  - firebase
  - GitHub
  - PWA
  - SPA
date: 2017-03-23 03:44:44
---

Eu vivo falando da rede social de banco de dados em tempo real chamada **Firebase** neste blogue digital. O Firebase ja é conhecido pela suas funcionalidades de Hosting, e basta um `firebase deploy`** **para por um projeto no ar. Porém, como eu sou uma pessoa chata e desagradável, eu não gosto muito de usar o Firebase Hosting quando eu não estou usando nada **além do própiro Firebase Hosting**.

Explico: quando estamos usando mesmo o Firebase, aí tudo bem, estamos tudo em casa, tem o Database, tem o Hosting, tem algum serviço de autenticação&#8230; se justifica deixar tudo lá. Mas quando eu não tô usando outra coisa sem ser o Hosting, aparecem certas coisas que me incomodam: ter que criar um projeto novo no Firebase (que são limitados, caso não saiba), ter que inicializar o repositório com as configurações, usar o Firebase-CLI além de &#8211; obviamente &#8211; o próprio Git, e configurar o domínio e SSL não é difícil; mas é chato, demorado e manual (ao menos pros meus padrões).

Quando essa situação acontece, eu prefiro usar o **GitHub Pages** para por minhas páginas estáticas no ar.  Eu já ia estar usando o Git de todo jeito, agora eu só tenho que dar push na branch certa e ele vai estar no ar. Nesses dias rolou algo interessante, um problema que eu nunca tinha enfrentado antes. Quando a gente desenvolve um Progressive Web App, é normal ele ter ao menos um tipo de autenticaçãozinha que seja. Então, eu sempre hospedava já no Firebase.

O Firebase Hosting tem um tipo de configuração especial para **Single Page Apps**: como é sabido, single page apps tem só o `index.html` e todo o conteúdo é adicionado e removido do DOM, e mudamos os valores e URL via JavaScript. No Firebase podemos configurar para que todos os requests válidos sejam redirecionados para o `index`, e assim é garantido que o usuário acessará o conteúdo devido, mesmo fazendo um acesso direto a uma página específica sem ser a própria home. É só por isso aqui no seu `firebase.json`:

<pre class="prettyprint lang-json" data-start-line="1" data-visibility="visible" data-highlight="" data-caption="">"rewrites": [ {
  "source": "**",
  "destination": "/index.html"
} ]</pre>

Ou seja, quando acessamos algum SPA hospedado no Firebase por: `https://meu.pwa/pagina`, o Firebase vai redirecionar o request para `index.html` e &#8211; se você fez tudo certo &#8211; vai receber de parâmetro &#8220;pagina&#8221; e você redireciona o usuário pro conteúdo devido.

Mas no GitHub Pages, se eu tentar acessar `https://meu.pwa/pagina`, o que acontece? Isso mesmo:

![Print Screen da página de 404 do GitHub](https://joselito.space/files/2017/03/1490246451-768x390.png)

O famoso erro 404\. O GitHub quando você tenta acessar `https://meu.pwa/pagina` ele tenta retornar `https://meu.pwa/pagina/index.html`. Como essa página não existe, ele retorna a página de erro 404\. Se você parar pra pensar, realmente o servidor está coberto de razão.

Eu podia nesse momento engolir o orgulho e voltar chorando pr&#8217;os braços do Firebase. Mas eu sou Brasileiro e não desisto nunca. Algum jeito tem que ter, não é possível. E como em 99,9% dos casos, tem solução pra tudo.

Achei o repositório do ilutre desconhecido [@rafrex](https://github.com/rafrex/). Eu podia terminar [o post aqui linkando o repositório](https://github.com/rafrex/spa-github-pages), mas lá tem tanto arquivo, tanto texto, tanta coisa ~desnecesária (apesar de entender porquê eles estão lá) que vou pular a abertura da série pra você e explicar o que tem que ser feito.

No Firebase, ele redireciona todos os requests pra `index.html`. No GItHub não. Mas se você parar pra pensar, dado que é um SPA. Só existem duas possibilidades de acesso direto a arquivos:

&#8211; O próprio `index.html`

&#8211; A página de erro 404

Aqui que a mágica acontece. Tecnicamente falando, o GitHub faz a mesma coisa que o Firebase, só que ao invés do `index.html` ele sempre redireciona para `404.html`. Se a gente der um jeito de redirecionar o `404` para o `index` e passar os parâmetros, estamos feitos, tudo funciona. Então, a gente tem que fazer duas coisas. Primeiro, escrever isso aqui no código da nossa **404.html**:

<pre class="prettyprint lang-html" data-start-line="1" data-visibility="visible" data-highlight="" data-caption="">&lt;html&gt;
  &lt;head&gt;
    &lt;meta charset="utf-8"&gt;
    &lt;title&gt;&lt;/title&gt;
    &lt;script type="text/javascript"&gt;
      // Copyright (c) 2016 Rafael Pedicini, licensed under the MIT License
      var pathPrefix = false;
      var l = window.location;
      l.replace(
        l.protocol + '//' + l.hostname + (l.port ? ':' + l.port : '') +
        l.pathname.split('/').slice(0, 2 * pathPrefix).join('/') + '/?p=/' +
        l.pathname.slice(1).split('/').slice(pathPrefix).join('/').replace(/&amp;/g, '~and~') +
        (l.search ? '&amp;q=' + l.search.slice(1).replace(/&amp;/g, '~and~') : '') +
        l.hash
      );
    &lt;/script&gt;
  &lt;/head&gt;
  &lt;body&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre>

O código é simples mas genial. Se o usuário acessa `https://meu.pwa/pagina`, o GitHub renderiza o template de `404.html`. No próprio template, ele pega a própria url e transforma `https://meu.pwa/pagina` em `https://meu.pwa/?p=pagina`. Aí agora a história é outra. Estamos indo para `index.html`, que é uma página válida. Então lá, precisamos adicionar o seguinte código:

<pre class="prettyprint lang-javascript" data-start-line="1" data-visibility="visible" data-highlight="" data-caption="">&lt;script type="text/javascript"&gt;
 // Copyright (c) 2016 Rafael Pedicini, licensed under the MIT License
    (function(l) {
        if (l.search) {
          var q = {};
          l.search.slice(1).split('&amp;').forEach(function(v) {
            var a = v.split('=');
            q[a[0]] = a.slice(1).join('=').replace(/~and~/g, '&amp;');
          });
          if (q.p !== undefined) {
            window.history.replaceState(null, null,
              l.pathname.slice(0, -1) + (q.p || '') +
              (q.q ? ('?' + q.q) : '') +
              l.hash
            );
          }
        }
    }(window.location))
&lt;/script&gt;</pre>

Aqui termina o truque. Como esse problema de URLS só acontece quando estamos trabalhando diretamente com a **History API**, o nosso próprio App vai usar a **própria** History API, independente do Framework que você estiver usando. Aí é garantido que a página vai ser redirecionada para o conteúdo esperado.

Aí é só correr pro abraço. Se você quisser ver um exemplo com Polymer funcionando, pode acessar o website web online do [I/O Extended Pernambuco](https://io.gdgrecife.com/). Foi justamente por culpa dele que eu descobri como que isso acontece.

Nada como ser cabeça dura ás vezes, né não?