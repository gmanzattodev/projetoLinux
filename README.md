# Bash Project Manager

Um projeto desenvolvido em **Bash Script** para praticar automação no Linux e gerenciamento de arquivos, diretórios e operações básicas do sistema através de um menu interativo no terminal.

## Sobre o projeto

O objetivo deste projeto é criar uma pequena ferramenta de gerenciamento utilizando apenas **Bash**, permitindo executar diferentes operações diretamente pelo terminal.

O projeto está sendo desenvolvido como parte do meu aprendizado de **Linux, Bash Script e automação de tarefas**.

## Funcionalidades

Atualmente o menu possui as seguintes opções:

* Reiniciar o sistema
* Desligar o sistema
* Criar um novo projeto
* Excluir um projeto
* Procurar arquivos
* Excluir arquivos
* Criar uma nova pasta

## Criação de projetos

A opção de criação de projetos permite:

1. Definir o nome do projeto.
2. Verificar se o nome já existe.
3. Criar o diretório do projeto.
4. Criar uma pasta dentro do projeto.
5. Definir a quantidade de arquivos.
6. Criar os arquivos automaticamente.
7. Criar novas pastas dentro da estrutura do projeto.

### Exemplo

Ao escolher:

```text
3 - Criar um Novo Projeto
```

O programa pode solicitar:

```text
Digite o nome da pasta: meu-site
Digite nome da pasta que vai dentro: imagens
Digite quantos arquivos vão dentro: 3

Digite o nome do arquivo: index.html
Digite o nome do arquivo: style.css
Digite o nome do arquivo: script.js
```

Estrutura resultante:

```text
Desktop/
└── meu-site/
    ├── index.html
    ├── style.css
    ├── script.js
    └── imagens/
```

## Verificação de diretórios

O projeto utiliza a condição:

```bash
[ -d "$HOME/Desktop/$pasta" ]
```

O parâmetro `-d` permite verificar se determinado caminho corresponde a um diretório existente.

Isso evita criar projetos com nomes duplicados.

Exemplo:

```bash
while [ -d "$HOME/Desktop/$pasta" ]; do
    echo "Essa pasta já existe"
    read -p "Digite outra pasta: " pasta
done
```

## Exclusão de projetos

O projeto também permite excluir diretórios utilizando:

```bash
rm -r "$HOME/Desktop/$pasta"
```

Antes de utilizar essa operação, é importante verificar o caminho, pois `rm -r` remove o diretório e seu conteúdo.

## Conceitos de Bash utilizados

Durante o desenvolvimento foram utilizados diversos conceitos fundamentais de Shell Script:

* `#!/bin/bash`
* `echo`
* `read`
* Variáveis
* `if`
* `while`
* `case`
* Funções
* Operadores de comparação
* Testes de diretórios com `-d`
* `mkdir`
* `touch`
* `cd`
* `rm`
* `sudo`
* Expansão de variáveis
* Operações aritméticas
* Controle de fluxo

## Estrutura lógica

O programa utiliza um menu baseado em `while` e `case`:

```text
                    ┌───────────────┐
                    │  Menu Bash    │
                    └───────┬───────┘
                            │
                         Escolha
                            │
          ┌─────────────────┼─────────────────┐
          │                 │                 │
       Reiniciar         Desligar         Projetos
          │                 │                 │
      reboot            poweroff          criar/excluir
                                              │
                                          arquivos
                                              │
                                           pastas
```

## Exemplo do menu

```text
1 - Reiniciar Sistema
2 - Desligar Sistema
3 - Criar um Novo Projeto
4 - Excluir Projeto
5 - Procurar arquivos
6 - Excluir arquivos
7 - Criar nova pasta
```

## Objetivo de aprendizado

Este projeto faz parte do meu processo de aprendizado em Linux e busca desenvolver principalmente:

* Raciocínio lógico
* Automação no terminal
* Manipulação de arquivos
* Manipulação de diretórios
* Estruturas condicionais
* Estruturas de repetição
* Funções em Bash
* Administração básica do Linux

A ideia é continuar evoluindo o projeto conforme novos conceitos de **Bash, Linux e automação** forem aprendidos.

## Próximas melhorias

Algumas funcionalidades planejadas:

* [ ] Criar arquivos dentro de subpastas automaticamente
* [ ] Procurar arquivos pelo nome
* [ ] Excluir arquivos individualmente
* [ ] Criar pastas em qualquer caminho
* [ ] Adicionar confirmação antes de excluir
* [ ] Melhorar tratamento de erros
* [ ] Validar nomes de arquivos e diretórios
* [ ] Adicionar cores ao menu
* [ ] Criar logs das operações
* [ ] Organizar o projeto em múltiplas funções
* [ ] Adicionar tratamento para entradas inválidas

## Tecnologias

* **Linux**
* **Bash**
* **GNU Coreutils**
* **Terminal**

## Como executar

Clone o repositório:

```bash
git clone SEU_REPOSITORIO
```

Entre no diretório:

```bash
cd projeto
```

Dê permissão de execução:

```bash
chmod +x projeto.sh
```

Execute:

```bash
./projeto.sh
```

## Aviso

Este projeto executa comandos que podem modificar arquivos e diretórios do sistema.

Principalmente:

```bash
rm -r
sudo reboot
sudo poweroff
```

Utilize essas operações com cuidado e teste o script em um ambiente controlado durante o desenvolvimento.

---

## Autor

**Giovani**

Projeto desenvolvido para estudos de **Linux, Bash Script e automação**.
