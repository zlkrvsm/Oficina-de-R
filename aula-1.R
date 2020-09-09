# Como instalar um pacote
#install.packages("tibble")
#install.packages("readr")
#install.packages("dplyr")
#install.packages("ggplot2")

# Carregar o pacote tibble
library(tibble)
library(readr)
library(ggplot2)

# Definir a pasta de trabalho
getwd()
#setwd()

# Verificando o formato do arquivo
readLines("censo_2010_rn.txt", n = 10)

# Definindo o dicionário
dicionario <- tribble(
  ~Variavel, ~PosIni, ~PosFim, ~Int, ~Dec, ~Tipo,
  "V0001", 1, 2, 2, NA, "A",
  "V0002", 3, 7, 5, NA, "A",
  "V0011", 8, 20, 13, NA, "A",
  "V0300", 21, 27, 7, NA, "N",
  "V0010", 28, 42, 3, 12, "N",
  "V0601", 43, 43, 1, NA, "C",
  "V6036", 44, 46, 3, NA, "N"
)

# Vendo o dicionário
dicionario

# Largura das colunas
colunas <- c(2, 5, 13, 7, 15, 1, 3)
colunas

# Tipo do dado
tipos <- c("character", "character", "character", "numeric", "numeric", "character", "numeric")
tipos

# r base
censo_rn <- read.fwf(file = "censo_2010_rn.txt",
                     widths = colunas,
                     colClasses = tipos,
                     n = Inf) # coloquem n observações
head(censo_rn)

# readr (tidyverse)
posicao <- fwf_widths(c(2, 5, 13, 7, 15, 1, 3))

tipos2 <- "cccnncn"

censo_rn2 <- read_fwf(file = "censo_2010_rn.txt",
                      col_positions = posicao,
                      col_types = tipos2)
head(censo_rn2)

names(censo_rn)

names(censo_rn2)

# r base
names(censo_rn) <- c("V0001", "V0002", "V0011", "V0300", "V0010", "V0601", "V6036")

# dplyr
library(dplyr)

censo_rn2 <- rename(
  .data = censo_rn2,
  uf = X1,
  municipio = X2,
  areap = X3,
  controle = X4,
  peso = X5,
  sexo = X6,
  idade = X7
)

head(censo_rn)
head(censo_rn2)

# Mudar a variável PESO
# r base
censo_rn$V0010 <- censo_rn$V0010 / (10 ^ 13)

# dplyr
censo_rn2 <- mutate(censo_rn2, peso = peso / (10 ^ 13))

head(censo_rn)
head(censo_rn2)

# r base
censo_rn$mun7 <- paste0(censo_rn$V0001, censo_rn$V0002)

# tidyr
library(tidyr)

censo_rn2 <- unite(data = censo_rn2,
                   col = mun7,
                   uf, municipio,
                   sep = "",
                   remove = FALSE)

head(censo_rn)
head(censo_rn2)

# r base
censo_rn$V0601f <- factor(x = censo_rn$V0601,
                          levels = c(1, 2),
                          labels = c("Masculino", "Feminino"))

# dplyr
library(dplyr)
censo_rn2 <- mutate(censo_rn2,
                    sexof = factor(x = sexo,
                                   levels = c(1, 2),
                                   labels = c("Masculino", "Feminino")))

head(censo_rn)
head(censo_rn2)

# r base
censo_rn$V0001 <- NULL
censo_rn$V0002 <- NULL
censo_rn$V0601 <- NULL

# dplyr
censo_rn2 <- select(censo_rn2, -uf, -municipio, -sexo)

head(censo_rn)
head(censo_rn2)

# r base
censo_rn <- censo_rn[order(censo_rn$V6036),]

# dplyr
censo_rn2 <- arrange(censo_rn2, idade)

head(censo_rn)
head(censo_rn2)

# r base
censo_rn$ge_pia <- cut(x = censo_rn$V6036,
                       breaks = c(0, 15, 65, 140),
                       right = FALSE)

# dplyr
censo_rn2 <- mutate(censo_rn2, ge_pia = cut(idade,
                                            breaks = c(0, 15, 65, 140),
                                            right = FALSE))

head(censo_rn)
head(censo_rn2)

# antes
class(censo_rn$mun7)
class(censo_rn2$mun7)

# r base
censo_rn$mun7 <- as.integer(censo_rn$mun7)

# dplyr
censo_rn2 <- mutate(censo_rn2, mun7 = as.integer(mun7))

# depois
class(censo_rn$mun7)

class(censo_rn2$mun7)

cod_natal <- 2408102

# r base
natal <- censo_rn[censo_rn$mun7 == cod_natal, ]

# dplyr
natal2 <- filter(censo_rn2, mun7 == cod_natal)

head(natal)
head(natal2)

# histograma
hist(censo_rn$V6036, main = "Idade") # base

h_ggplot <- ggplot(censo_rn2) +
  geom_histogram(aes(x = idade)) +
  ggtitle("Idade") # ggplot
h_ggplot

# boxplot
boxplot(censo_rn$V6036, main = "Idade")

b_ggplot <- ggplot(censo_rn2) +
  geom_boxplot(aes(y = idade)) +
  ggtitle("Idade")

b_ggplot

# pie
x <- table(censo_rn$V0601f)
pie(x)

p_ggplot <- ggplot(censo_rn2) +
  geom_bar(aes(x = sexof, fill = sexof), stat = "count", width = 1) +
  coord_polar()

p_ggplot

# barras
x <- table(censo_rn$V0601f)
barplot(x)

bar_ggplot <- ggplot(censo_rn2) +
  geom_bar(aes(x = sexof, fill = sexof), stat = "count", width = 1)

bar_ggplot

# r base
pia_estadual <- prop.table(table(censo_rn$ge_pia))
pia_capital <- prop.table(table(natal$ge_pia))

pia_estadual
pia_capital

barplot(cbind(pia_estadual, pia_capital), legend.text = c("0 a 14 anos", "15 a 64 anos", "65 anos e mais"), beside = TRUE, args.legend = list(x = "top"))

# ggplot
x <- count(natal2, ge_pia) %>% mutate(group = "Natal", n = n/sum(n))
y <- count(censo_rn2, ge_pia) %>% mutate(group = "Estado", n = n/sum(n))
grafico <- bind_rows(x, y)

ggplot(grafico) + geom_col(aes(x = group, y = n, fill = ge_pia), position = "dodge")

# r base
write.csv2(censo_rn, "censo_rn_processado.csv")
write.csv2(natal, "natal_processado.csv")

# readr
library(readr)
write_csv2(censo_rn2, "censo_rn2_processado.csv")
write_csv2(natal2, "natal2_processado.csv")

# r base
png("histograma_base.png")

hist(censo_rn$V6036, main = "Idade")

dev.off()

# ggplot
ggsave("histograma_ggplot.png", h_ggplot)