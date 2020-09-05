# # Obtendo os dados da PNAD 2015 ----
#
# # Dados da pesquisa
# f <- tempfile()
# dado <- "ftp://ftp.ibge.gov.br/Trabalho_e_Rendimento/Pesquisa_Nacional_por_Amostra_de_Domicilios_anual/microdados/2015/Dados_20170517.zip"
# download.file(dado, destfile = f, mode = "wb")
# unzip(f, exdir = "pnad2015")
#
# # Dicionário
# g <- tempfile()
# dir <- "ftp://ftp.ibge.gov.br/Trabalho_e_Rendimento/Pesquisa_Nacional_por_Amostra_de_Domicilios_anual/microdados/2015/Dicionarios_e_input_20170517.zip"
# download.file(dir, destfile = g, mode = "wb")
# unzip(g, exdir = "pnad2015")

# Teste de leitura

posicoes <- fwf_cols(
  V0001 = c(1, 2)
)

read_fwf(file = "pnad2015/Dados/DOM2015.gz", col_positions = posicoes, n_max = 10)

# Pirâmides etárias ----

# Razão de sexo c/ gráficos ----

# Razões de dependência e índices de envelhecimento ----

# Índices de Whipple e Myers ----

# Cálculo de médias móveis c/ gráficos ----

# Construção de uma tábua de vida ----

# Gráficos de algumas funções da tábua de vida ----

# Padronização direta e indireta e decomposição de taxas ----

# Matriz migratória e saldo migratório ----

# Taxas líquida e bruta de reprodução ----

# Singulate Mean Age at Marriage/Union, SMAM e SMAU ----