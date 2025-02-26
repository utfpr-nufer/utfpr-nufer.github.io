---
title: Sobre Pull Requests
author: Hirade Kevin
date: 2025-02-26
category: Jekyll
layout: post
---

Esta página descreve um guia rápido sobre as pull requests no GitHub.

# Visão geral
As *pull requests* são criadas, com fins de empurrar códigos alterados para o ambiente de produção (neste caso, a *branch main*). Todos os códigos necessitam passar por uma *pull request* antes de entrar na *main*[^1].

Dito isso, os titulos das pull requests (PR) devem descrever o que os códigos representados pela mesma realizam. Em relação ao corpo da pull request, é recomendado inserir informações sobre as mudanças realizadas caso não seja trivial (principalmente nas pull requests relacionadas a implementações).

Juntamente, deve colocar, caso haja várias modificações na mesma pull request, os detalhes das modificações, como quais parâmetros foram modificados, qual será o novo comportamento, podem ser descritos no corpo da pull request em forma de tópicos, também de forma sucinta e breve.

> ##### LEMBRANDO
> Pense que o título da pull request (e na prática é isso que vai acontecer) é uma linha da lista de modificações do software, então o título deve descrever de forma sucinta e breve a alteração realizada. É recomendado imaginar que um usuário do software irá ler tal modificação, e ela deve ser facilmente compreendido por um usuário que o utilize.
{: .block-tip }

> ##### DICA
> A maioria das pull requests terão algum dos seguintes prefixos:
> - Implementado
> - Modificado
> - Corrigido
> - ...
{: .block-tip }

# Exemplo
Supondo a existência de uma *issue* com o identificador #1, com o titulo "Mudança nos parâmetros da máquina Dutra", e a branch respectiva com o nome "fulano/arrumando-a-maquina-dutra".

O titulo da pull request deverá estar parecido com "Modificado os parâmetros da máquina Dutra", e o seu corpo descreverá detalhadamente essas modificações. Por exemplo:
- Implementado um novo parâmetro "Quantidade de UFOs na UNICAMP"
- Modificado o valor padrâo do parâmetro "Bitcoin hater" de `falso` para `verdadeiro`
- Corrigido um problema relacionado ao parâmetro "P.A.A.", na qual ao inserir valores negativos, fazia a máquina crashar

[^1]: Mesmo não tendo nenhuma forma de reforçar tal comportamento, como o uso de regras no GitHub, é esperado que os membros do grupo sejam profissionais. Em ambientes mais sensíveis e empresários, as pull requests são passados por diversos *pipelines* de testes automatizados, revisados por robos e seres humanos.