---
title: As novidades do Firebase Summit
tags:
  - Código
  - firebase
  - summit
date: 2016-11-08 14:18:56
---

Ontem aconteceu em Berlim o Firebase Dev Summit. Depois de seis meses do Google I/O ter rolado — e o I/O foi totalmente sobre o Firebase — chegou a hora de mostrar os próximos passos da plataforma.

Como todo bom evento sobre produto, ele joga uns números impressionantes na sua cara: desde o lançamento da versão 3.0, no I/O, mais de **750 mil** projetos foram criados no Firebase, _Kakaroto_.

#### Com amor, para os Apps

O **Firebase Crash Reporting** saiu do beta e agora está totalmente integrado com o **Firebase Analytics**. A partir de agora, quando seu app der um crash, todas as tags e conteúdos armazenados via analytics serão enviados ao Firebase e estarão disponíveis no seu console para você analisar os dados e entender, em detalhes, o que o seu usuário estava fazendo e qual o motivo daquele crash ter acontecido.

Além disso, para Android, o **Firebase Test Lab** agora está disponível no tier **gratuito **do Firebase. Você pode usa-lo com 5 testes em devices físicos/dia e 10 testes em devices físicos/dia sem pagar absolutamente nada. O Test Lab permite executar e analisar testes feitos com o Espresso e o Robotium (entre outros) e ver os resultados direto no seu Console. Também foram disponibilizados modelos de smartphones Android mais atuais no painel.<span id="more-7"></span>

Além disso, o **Firebase Analytics** agora oferece informações em tempo real (nada mais apropriado) da utilização do seu app, bem como exportar tudo isso para BigQuery (sim, em tempo real!). O Analytics também ficou mais esperto: ele consegue indentificar algumas nuances mais profundas agora: por exemplo, quando você usa um Dynamic Link dentro do Facebook, o Analytics consegue indentificar isso e organizar esses dados pra você. Você sabe agora o que seu usuário faz, de onde vem e — praticamente — para onde ele vai no seu app.

#### Se o login já era fácil, imagina agora

O **Firebase Auth** tenta ser o sistema mais simples possível para autenticar os usuários. Ele permite login via OAuth com **Google, Facebook**, Twitter, Github, **E-mail** e — o melhor — **anonimamente**.

A API já era um amorzinho. Mas as pessoas lá acharam pouco: saiu a versão 1.0 do [**Firebase-UI**](https://github.com/firebase/FirebaseUI). Ele é um projetíneo que já entrega pra você o front-end pronto pra todas essas redes, totalmente conectado com a API do Firebase. Ele está disponível para **Android, iOS e Web.**

_Só falta daqui a pouco o Firebase vai fazer sozinho direto no Google Play, vai ser só subir o APK. Isso de programar é sem futuro._

<figure>![](https://cdn-images-1.medium.com/max/1024/1*TnLy_u9uWvQU7lZbIe6t_Q.jpeg)<figcaption>[https://twitter.com/tasomaniac/status/795616656940736512](https://twitter.com/tasomaniac/status/795616656940736512)</figcaption></figure>

#### SDKs novos e atualizados

Você que faz joguetes, saiu SDK nativo do Firebase pra Unity! Analytics, o Banco de Dados, Autenticação, Dynamic Links, Remote Config, Notificações. Tá tudo disponível. Surpreendentemente.

De tabela, você que curte escovar uns bits, também rolou update do SDK nativo para C++. Sim, tem um. Um novo mundo de possibilidades, não é mesmo? A principal novidade é o suporte a banco de dados em realtime. Sim. Em C++. Tenho até medo.

Não ligado diretamente ao Summit, mas aproveitando o incejo, o [**AngularFire**](https://github.com/angular/angularfire2)** está quase na versão final.** Não conta pra ninguém que eu te contei. Se você já está trabalhando com Angular 2, **corre.**

Por fim, também saiu o update pra algo que você talvez não saiba que o Firebase tem, o **Admin SDK**. Com versões pra **Node e Java**, ele permite você estruturar uma área de Admin para sua aplicação, toda personalizada do seu jeitinho. O Console do Firebase é ótimo — mas pra quem é Dev. Se você quer que um humano entenda (e gerencie) nada como um Dashboard personalizado. [**Vai fazer o teu.**](https://firebase.google.com/docs/admin/setup)

#### Comunidade

Um Summit é muito bom pra aproximar os desenvolvedores que aplicam um produto com os desenvolvedores que criam o produto. Mas não é todo mundo que pode ir direto pra Berlim trocar uma ideia ou participar dos codelabs.

Se você quiser se aprofundar mais no Firebase, no Summit foi lançado em parceria com a **Udacity **o **“Firebase in a Weekend”** para [iOS](https://www.udacity.com/course/firebase-in-a-weekend-by-google-ios--ud0351?utm_campaign=Firebase_announcement_awareness_general_en_11-07-16&amp;utm_source=Firebase&amp;utm_medium=blog) e [Android](https://www.udacity.com/course/firebase-in-a-weekend-by-google-android--ud0352?utm_campaign=Firebase_announcement_awareness_general_en_11-07-16&amp;utm_source=Firebase&amp;utm_medium=blog). **Sim, de graça também.**

Outro lugar top pra você interagir com os developers, entra no [**Slack**](https://firebase-community.appspot.com/)** **e segue o [**Twitter**](https://twitter.com/Firebase)** **do Firebase.

Além disso, visite o [**Canal do YouTube**](https://www.youtube.com/firebase)** **do Firebase. Lá estão a gravação de todas as palestras do Summit, mais especificamente nessa [playlist aqui](https://www.youtube.com/watch?v=2sCjSz_svdY&amp;list=PLl-K7zZEsYLmYSsW6ED2QvHxuI3UzT0WZ).

**_Conteúdo é o que não falta (:_**