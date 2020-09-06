# Oficina de R

Oficina de R dos alunos da pós-graduação do NEPO, que encararam aprender a programar no isolamento social.

Link para o site: https://zlkrvsm.github.io/Oficina-de-R/index.html

# Proposta
O uso do software R oferece uma alternativa a outras formas de trabalho com dados quantitativos para as ciências sociais quantitativas e, especialmente, a demografia. No entanto, o software tem uma barreira de entrada alta, devido a ausência de uma interface de usuário gráfica e da necessidade da introdução de temas de programação, ciência da computação e ciência de dados. Por essa razão, este curso introdutório pretende suavizar essa curva de aprendizado através da introdução de conceitos e técnicas de programação em R em linguagem acessível e voltada para praticantes das ciências humanas. O curso pretende introduzir também algumas alternativas para a realização das diferentes tarefas, usando exemplos do R base e do tidyverse.

# Metodologia

O curso será composto por 5 sessões de 4 horas de duração cada. Cada sessão será dívida em 3 partes: (1) introdução aos conceitos e ferramentas a serem utilizadas, com exposição e perguntas, (2) oficina prática feita em seu próprio ritmo com monitoria do Augusto e Vinícius e (3) encerramento com apresentação de uma proposta de solução. Os participantes são ~~encorajados~~ obrigados a participar ativamente das 3 partes da aula, fazendo perguntas e interrompendo constantemente o andamento das atividades, sob risco de colocar todo o curso a perder! As conversas paralelas sobre o tema da aula são ~~bem-vindas~~ necessárias para o bom funcionamento da oficina. Lembre-se da natureza coletiva, colaborativa e comunitária da produção acadêmica e do trabalho com o software R.

# Tópicos

- Introdução aos conceitos básicos e modelo Import/Tidy/Transform/Visualize/Model/Communicate (ITTVMC)
- Importação de distintas fontes de dados e tratamento inicial dos dados ("cozinha")
- Programação
- Pesquisas Amostrais (ficou diluído nos outros)
- Visualização de dados
- Rmarkdown (?)

# Aulas

## O Básico do R

### Um exemplo de data pipeline, da importação à visualização.

- O modelo: import, tidy, transform, visualize, model, communicate.

### Comentários sobre temas diversos:

- Workflow
- Funções, objetos, vetores, data.frames.
- Pasta de trabalho.
- A importância dos livros e tutoriais online.
    
### Exercício

- Um exemplo-exercício: calcular algumas medidas demográficas a partir de um extrato do Censo 2010
    - Com R Base.
    - Com tidyverse.

## Importação e cozinha

### Importação de diferentes tipos de bases de dados

- Censo Demográfico
- PNAD
- PNAD Contínua

### Cozinha (tidy) dos dados

- Tipos de dados (números, strings, factors, lógicos, data/hora)
- Missing data
- Long/Wide data

### Exportação de dados

- CSV
- RDS
- RDATA
- SPSS/SAS/STATA

### Comentários sobre temas diversos

- Projetos e pastas.
- Pacotes
- survey objects e outros objetos estranhos
- Listas
- Como a cozinha dos dados se integra com as partes posteriores
- Uma crítica ao ITTVMC: "Perdidos nos dados"
- O ofício do cientista de dados

### Exercício

- PNAD Contínua:
    - importação e tratamento inicial dos dados
    - criação do objeto survey
    - conversão para factors
    - tratamento dos missings
    - conversão de long pra wide data

## Transformação, visualização, modelagem

### Transformando dados

- Variáveis derivadas
- Medidas resumo
- Operações por grupo

### Visualizações básicas

- Scatterplot
- Lines
- Boxplot
- Density plot
- Barplots and Histograms
- Pointrange (erros)
- Mapas

### Modelos

- Introdução extremamente superficial a modelagem
- Um exemplo MUITO simples de modelo linear
- Visualizando uma linha de tendência de modelo linear

### Exercicio

- Censo Demográfico:
    - construção de variáveis derivadas de idade, renda e educação
    - gráficos para exploração dos dados
    - um modelo linear de renda e educação

## Programação

### Controle de fluxo

- if/else
- switch
- break
- return
    
### Loops

- for
- while
- repeat
    
### Funções: Round 2

- Componentes
- Escrevendo sua primeira função
- Modificando funções que já existem
- Usando funções no lugar de loops (lapply, sapply, tapply, família map)
    
### Exercicios

- Criando uma variável dummy usando ifelse/if_else
- Criando uma região migratória com case_when ou if - else - if chain
- Criando uma função que faz grupos etários a partir de um vetor de idade
- Criando uma função que faz índice de Myers/Whipple
- Criando uma função que faz taxa de fecundidade total

## Mini-projeto em R

### Escolha um dos temas a seguir e implemente a pipeline em R, da importação até a visualização/exportação

- Taxa de fecundidade total para todos os municípios de uma área geográfica (país, estado) de acordo com a potência do seu computador com visualização
- Medidas resumo de migração para uma área geográfica: volume bruto, saldo migratório, taxa bruta, taxa líquida, índice de eficácia migratória.
- Tábua de vida
- Mapa coroplético de variável socioeconômica
- 3 visualizações mais complexas da sua preferência
