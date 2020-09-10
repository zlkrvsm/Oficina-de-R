# libs --------------------------------------------------------------------
library(PNADcIBGE)
library(tidyverse)
library(survey)

# Utilizando a PNAD contínua (PNADC_2018_visita1.txt.xz) e
# seus arquivos de apoio

microdados <- "PNADC_2018_visita1.txt.xz"
input <- "input_PNADC_2018_visita1.txt"
dicionario <- "dicionario_PNADC_microdados_2018_visita1.xls"

# Selecione as variáveis de interesse -------------------------------------
# Demográficas, sexo = V2007, idade = V2009
# Socioeconômicas, anos de estudo = VD3005, renda per capita = VD5011
select = c("V2007", "V2009", "VD3005", "VD5011")

# Importe a PNAD Contínua 2018 --------------------------------------------
pnadc <- read_pnadc(microdados, input, vars = select)

pnadc <- pnadc_labeller(pnadc, dicionario)

pnadc <- pnadc_design(pnadc)


# Vamos ver o nosso banco de dados ----------------------------------------
str(pnadc$variables)

# Como está nossa variável de renda?
pnadc$variables$VD5011 %>% summary()

# Como está nossa variável de educação?
pnadc$variables$VD3005 %>% summary()

# O que são esses missings?

#subset(pnadc$variables, is.na(VD5011)) %>% View()
# Não parece que esses missings tenham alguma estrutura. Provavelmente são
# não resposta simples mesmo.

#subset(pnadc$variables, is.na(VD3005)) %>% View()
# Esses aqui parecem ser crianças menos de 5 anos, então é uma não resposta
# estrutural do questionário.

# Exclua os missings
pnadc_sem_na <- subset(pnadc, !(is.na(VD5011) | is.na(VD3005)))

# Digamos que a gente queria construir uma tabela que tenha, nas linhas,
# uma variável de renda, e, nas colunas, alguns grupos de anos de estudo.
# Vamos transformar nossas variáveis originais.

pnadc_sem_na <- update(

  object = pnadc_sem_na,

  granes = fct_collapse(VD3005,
    "0 a 3 anos" = c("Sem instrução e menos de 1 ano de estudo",
                     "1 ano de estudo",
                     "2 anos de estudo",
                     "3 anos de estudo"),
    "4 a 8 anos" = c("4 anos de estudo",
                     "5 anos de estudo",
                     "6 anos de estudo",
                     "7 anos de estudo",
                     "8 anos de estudo"),
    "9 a 11 anos" = c("9 anos de estudo",
                      "10 anos de estudo",
                      "11 anos de estudo"),
    "12 a 15 anos" = c("12 anos de estudo",
                       "13 anos de estudo",
                       "14 anos de estudo",
                       "15 anos de estudo"),
    "16 anos ou mais" = "16 anos ou mais de estudo"
  ),

  grrendapc = cut(VD5011, breaks = c(0, 500, 1000, 2000, 4000, 6000, 8000,
                                     10000, 50000, 208000), dig.lab = 7)

)

# Verificando no olho se os grupos foram criados corretamente
#View(pnadc_sem_na$variables)

# Agora, nos podemos tabular nossos dados
options(scipen = 999) # retirar as notações científicas

x <- svytable(~ grrendapc + granes, pnadc_sem_na, round = TRUE)

print(x)

# Salvar nossos bancos e resultados -------------------------------------------
# pnad
saveRDS(pnadc, "pnadC-Subarq-1.rds")

# tabela x
write.table(x, "renda x anos_estudo.csv", sep = ";", dec = ",")
