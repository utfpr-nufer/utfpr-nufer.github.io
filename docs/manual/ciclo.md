---
layout: default
---

[Voltar](./index.md)

# Ciclo de desenvolvimento

### Visão geral
O ciclo de desenvolvimento, consiste no conjunto de processos que são passados durante o processo de construção de soluções para tarefas passadas.

### Passo a passo
#### Construção da issue
Com uma nova tarefa a resolver, o primeiro passo a se fazer, é registrá-lo como uma *issue* no GitHub. Nele, é necessário descrever, de forma breve, uma visão geral do que a tarefa tem como objetivo, resolver. Resumindo, a *issue* é uma representação da tarefa passada, no GitHub.

> Este passo é importante para que sirva como um registro, tanto para futuros membros que entrarem no projeto, como uma documentação das modificações feitas em uma determinada versão.

O título da *issue* deve-se descrever sobre o que se consiste

O conteúdo da issue deve-se, consister em:
- Visão geral: descrição na qual permita que o leitor entenda os objetivos principais da *issue*
> Exemplo:
> "O problema está relacionada na geração do código CLI, em máquinas que geram tais códigos de máquina. Ao pressionar o botão de "Machine-code", o software RP3 devolverá um erro para o usuário, podendo até fechar o programa."

- Definition of done: descrição do passo a passo que o membro tomará, ou pode tomar para solucionar o problema descrito pela *issue*
> Exemplo:
> - Investigar possíveis problemas relacionadas
> - Corrigir o problema
> - Verificar se a solução não causa nenhum outro problema
> - Testar em várias geometrias e gerar códigos de extensão CLI

Caso haja algum material de apoio utilizado pelo membro:
- Anexos: inserção de links, arquivos ou qualquer outro material que possa auxiliar na compreensão da *issue*

Caso seja uma refatoração/reestruturação:
- Problemas: descrição sobre os problemas que a refatoração/reestruturação visa solucionar, podendo ser uma breve descrição, ou detalhada.
> Exemplo:
> - A seguir, segue os problemas do atual sistema de parâmetros:
>   - As configurações são salvas em forma de texto (char)
>   - As configurações precisa respeitar a ordem na qual os dados são registrados, para que a leitura seja feita e atribuída aos seus respectivos parâmetros.
>   - É necessário, em cada máquina, definir a ordem que os parâmetros são carregados e salvados.

- Solução: descrição sobre a solução tomada pela refatoração/reestruturação
> Exemplo:
> - Foi implementado uma nova estrutura para as configurações, na qual, há um cabeçalho para inserir informações gerais da configuração, e as seriais, conjunto de configurações (e.g., support, filling, machine, etc.)
> - As configurações são salvas em binário, economizando espaço
> - As configurações não dependem mais da ordem na qual são carregados e salvos
> - As máquinas não precisam implementar mais os métodos relacionadas as ações de carregar e salvar parâmetros (foi implementado no método RPAbstractMachine)


Caso seja um bug:
- Detalhes técnicos: descrição técnica, podendo ser breve ou detalhada, sobre os motivos técnicos do problema acontecer.
> Exemplo:
> Foi se, verificado, a criação de instâncias de foma exagerada na memória heap, nas linhas 219, 233 (método `rotateContourCounterClockwise`) e 234 (método `FindRasterContact`) no arquivo `ZigZagStrategy`. Ademais, nas linhas 177, 181 (método `setExtraParameter`) e 215 (método `addIntersectionPoint`) no arquivo `DepositionStrategy`. E finalmente, o método `calcLines` de `LinesHandler`.

- Como reproduzir: passo a passo de como reproduzir o bug descrito pela tarefa, permitindo que outros membros possam verificar se o problema é verídico, e se foi solucionado, posteriormente.
> Exemplo:
> 1. Vá à branch main
> 2. Compile o projeto
> 3. Entre em qualquer máquina
> 4. Carregue o Tunnel.stl do Tunnel.zip
> 5. Faça o processo de filling
