---
title: Porquê o Firebase é o melhor lugar para seu Progressive Web App
tags:
  - Código
date: 2016-07-28 02:34:22
---

<figure>![](https://cdn-images-1.medium.com/max/874/1*BjKeWBXINSb8f5bKx9csbg.png)</figure>

No último Google I/O o Firebase ficou monstrão e virou A Plataforma pra aplicativos. Agora ele é um toolkit completo, que vai desde autenticação até analytics; tudo isso a estando disposição do desenvolvedor num ecosistema totalmente integrado com os produtos do Google.

Eu [havia comentado anteriormente](https://codigo.joselito.space/seus-sites-seguros-de-gra%C3%A7a-sem-custo-nenhum-e-n%C3%A3o-pagando-nada-49df4694bd85) que achava o finado Parse uma solução mais completa pra quem queria fazer um App. Porém, com esse update, o Firebase preencheu — e da melhor maneira possível — todas as lacunas que o Parse se destacava. O Firebase é muito, mais muito mais que um banco de dados que atualiza em tempo real.

E se **_Progressive Web Apps_** são sites que tomaram as vitaminas certas, há poucas vitaminas melhores que o Firebase para construirmos a base fundamental da nossa aplicação. Saiba quais os principais motivos disso:

#### Hospedagem

Apesar de não ser estritamente obrigatório, um bom PWA tende a ser um Single Page App. Com o **Firebase Hosting** você pode dar _deploy_ nos arquivos estáticos do seu PWA com apenas uma linha de comando, usando o **Firebase-CLI**. Tudo é enviado para os servidores do Google e entregue via **CDNs** ao redor do mundo, o que garante que o usuário da sua aplicação vai carregar seu app o mais rápido possível.

Além disso, ele oferece um controle de versão diferenciado pra cada deploy. Ou seja, se alguém (você) fez alguma merda, até o CTO que não coda nunca consegue voltar pra última versão dando dois cliques lá no painel do Firebase.

#### Rotas

Se você já fez um SPA, sabe o quão importante é fazer o roteamento devido das páginas. Entretanto, muita gente esquece de que isso é importante de ser feito não só no front-end do seu App, mas no seu servidor também.

Para melhorar a experiência do usuário, uma excelente — e ao meu ver, obrigatória — prática é **mudar a URL** da sua aplicação a cada vez que a sua **View** é alterada. E pra isso ficar bem feito, dando a possibilidade de você usar a **History API** do Browser (e remover aquele /#/ infame das URLs), o Firebase permite que você, de maneira simples, redirecione todo o acesso de URL no seu site para a **index.html**.

Sendo assim, um acesso de [**http://meusite.xyz/produtos**](http://meusite.xyz/produtos) seria redirecionado diretamente para o seu SPA, com /produtos como **parâmetro**. Usando um bom framework como o **Angular** ou uma lib como o **React + React Router** você tá feito.

Fúnciona até com **Ember**, [aquele framework que ninguém usa](https://medium.com/@aleattorium/ningu%C3%A9m-usa-ember-js-59e850dc05a1#.ectb1f2pz).

#### HTTPS/SSL grátis com seu próprio domínio

SIM. HTTPS tá mais mainstream do que nunca e isso é ótimo.

O Firebase já oferecia HTTPS na faixa pra quem usava o subdomínio padrão, o **_firebaseapp.com_**. Porém eles agora têm a ousadia de comprar e configurar o certificado SSL pra você, sem qualquer custo.

E dado que é um certificado direto, diferente do SSL gratuito que a **CloudFlare** oferece, é sem sombra de dúvida a **melhor solução** pra ter um HTTPs gratuitamente, com o mínimo de esforço.

#### Push Notifications, Auth e otras cositas mas

Como mencionei no início do texto, o Firebase agora é um toolkit robusto e completo. O **Firebase Cloud Messaging**, por exemplo, é uma versão evoluida do Google Cloud Messaging, totalmente projetada pra aplicativos e sites. Ela é especialmente útil para o envio de **Push Notifications** segmentados, fomentado o **engajamento** dos usuários, que é um dos princípios de um Progressive Web App.

Além disso, temos serviços como de **Autenticação** integrado diretamente com o banco do Firebase (totalmente compatível com **OAuth**, dá pra logar até com conta Microsoft); **Analytics** projetado para Apps; Integração com o Google **Adwords**; e os incríveis [**Dynamic Links**](https://firebase.google.com/docs/dynamic-links/?hl=pt-br) e o [**Firebase Invites**](https://firebase.google.com/docs/invites/?hl=pt-br), que merecem seus próprios posts.

Aguardem e confiem.

#### Use o Firebase agora, meu jovem

Você agora já sabe porquê o Firebase é o melhor lugar para seu appzinho morar. Ele vai ter uns [vizinhos incríveis](https://firebase.google.com/customers/). Tá esperando o quê pra começar a usar? Entra em [**http://firebase.google.com**](http://firebase.google.com). Nem vai precisar de cadastro por que você que tá lendo tem Conta Google que eu sei.

_You got the fire, let it _[_burn_](https://www.youtube.com/watch?v=CGyEd0aKWZE)_._