---
title: Padrões do desenvolvimento
author: Hirade Kevin
date: 2025-02-26
category: Jekyll
layout: post
---

Esta página descreve padrões de desenvolvimento que são seguidos pelo time de desenvolvimento do grupo NUFER. Tais padrões refere-se ao ciclo de desenvolvimento em geral, e não como você deve programar na linguagem de programação C++. A ideia é reforçar a aplicação e a prática dessas ideias ao longo da estadia do desenvolvedor no grupo, com o intuito de evitar tais erros no futuro.

> ##### LEMBRANDO
> 
> Esta pagina deve ser revisitado várias vezes pelo desenvolvedor, pois NINGUEM deve DECORAR todas essas regrinhas. É mais para guiar, e não servir como um artefato religioso.
{: .block-tip }

# Linguagem de programação C++
Antes de mais nada, vale mencionar que o grupo NUFER não possui uma linguagem de programação definida para o uso, porém, é predominantemente encontrado na linguagem C++.
Existe casos onde os algoritmos são encontrados em outras linguagens, como Python, já que são membros exteriores ao grupo, e "não há nada que impedem deles de fazerem na linguagem favorita".

Caso tenham alguma dúvida sobre as melhores formas de programar em C++, é recomendado a visualização do [guia C++]((https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)) feitos pelo Bjarne Stroustrup e Herb Sutter.

# Ciclo de desenvolvimento
O ciclo de desenvolvimento do grupo consiste em:
1. Receber demandas dos professores, ou dos próprios membros do grupo (e.g., pessoal da mecânica, química, entre outros)
2. Anotar tais demandas como issues, [clique aqui](../issues.md) para saber mais detalhes em como fazê-lo
3. Verifique quais demandas são urgentes e as complexidades das mesmas, priorizando adequadamente
4. Faça as devidas modificações e implementações na sua própria branch, com um prefixo identificador (seu nome)
    4.1. Para criar a sua própria branch, primeiramente vá para a branch `main` utilizando o comando `git checkout main`
    4.2. Verifique se há alguma mudança realizada utilizando o comando `git pull`
    4.3. Crie a sua branch com o nome descrevendo as alterações realizadas nela, com um prefixo do teu nome[^1]. Exemplo: `git checkout -b fulano/arrumando-a-maquina-dutra`
    4.4. Realize as devidas modificações
5. Anote todas as modificações em formato de pull requests, [clique aqui](./prs.md) para saber mais detalhes em como fazê-lo
6. Verifique se a pull request foi aprovada e faça as devidas modificações, caso necessário
7. Peça para gerar uma nova release, [clique aqui](./releases.md) para saber mais detalhes em como fazê-lo

[^1]: Cuidado em inserir caracteres especiais, pois aceita apenas o alfabeto comum aA-zZ