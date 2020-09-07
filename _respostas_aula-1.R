library(tidyverse)

# Importe os arquivos ---------------------------------------------------------
start <- c(1, 3, 8, 21, 28, 43, 44, 47, 48)
end <- c(2, 7, 20, 27, 42, 43, 46, 47, 55)
nomes <- c("uf", "munic", "areap", "controle", "peso", "sexo",
           "idade", "nv_inst", "renda_pc")
tipos <- "cccnncncn"

censo_sc <- read_fwf(file = "censo_2010_sc.txt",
                     col_positions = fwf_positions(start, end, nomes),
                     col_types = tipos)

censo_sc

# Faça a cozinha das variáveis ------------------------------------------------
censo_sc <- censo_sc %>%
  unite(mun7, uf, munic, sep = "") %>%
  mutate(peso = peso / 10^13,
         renda_pc = renda_pc / 10^2,
         sexo = factor(x = sexo,
                       levels = c(1, 2),
                       labels = c("Masculino", "Feminino")),
         nv_inst = factor(x = nv_inst,
                          levels = c(1, 2, 3, 4, 5),
                          labels = c("Sem instrução até f. incompleto",
                                     "F. completo até m. incompleto",
                                     "M. completo até s. incompleto",
                                     "S. completo",
                                     "Não determinado")))

censo_sc

# Transforme o banco se necessário --------------------------------------------
censo_sc <-
  censo_sc %>% mutate(ge_pia = cut(idade,
                                    breaks = c(0, 15, 65, 100),
                                    right = FALSE))
censo_sc

floripa_cod <- 4205407

floripa <- censo_sc %>% filter(mun7 == floripa_cod)
floripa

# Produza algumas visualizações -----------------------------------------------

  # boxplot renda x instrução
  g1 <- ggplot(censo_sc, aes(x = nv_inst, y = renda_pc, color = sexo)) +
    geom_boxplot() +
    scale_y_continuous(trans = "log10")
  g1

  # PIA estadual vs capital
  x <- censo_sc %>%
    count(ge_pia, wt = peso) %>%
    mutate(p = n/sum(n), regiao = "Estado")

  y <- floripa %>%
    count(ge_pia, wt = peso) %>%
    mutate(p = n/sum(n), regiao = "Capital")

  z <- bind_rows(x, y)
  z

  g2 <- ggplot(z, aes(x = regiao, y = p, fill = ge_pia)) +
    geom_col(position = "dodge")
  g2

  # Barras, instrução, estadual vs capital
  x <- censo_sc %>%
    count(nv_inst, wt = peso) %>%
    mutate(p = n/sum(n), regiao = "Estado")

  y <- floripa %>%
    count(nv_inst, wt = peso) %>%
    mutate(p = n/sum(n), regiao = "Capital")

  z <- bind_rows(x, y)
  z

  g3 <- ggplot(z, aes(x = regiao, y = p, fill = nv_inst)) +
    geom_col(position = "dodge")
  g3

# Salve o seu banco e suas visualizações --------------------------------------

write_csv2(censo_sc, "censo_sc.csv.xz")
write_csv2(floripa, "floripa.csv.xz")

ggsave("boxplot.png", g1)
ggsave("pia.png", g2)
ggsave("instrucao.png", g3)
