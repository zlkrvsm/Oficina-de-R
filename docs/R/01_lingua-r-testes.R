help('+')

?'+'

x = c(1:10)
y = c(1:10)
par(
  bg = "#646989",
  las = 1,
  col.lab = "black",
  col.axis = "white",
  bty = "n",
  cex.axis = 0.9,
  cex.lab = 1.5
)
plot(x, y,
     pch = 20,
     xlab = "fake x data",
     ylab = "fake y data")

png("TEST.png", width = 300, height = 600)
plot(x,y, xlab = "x axis", ylab = "y axis", cex.lab = 3,col.lab =
       "red", main = "some data", cex.main=1.5, col.main = "red")
dev.off()

library(tidyverse)

unzip("API_NY.GDP.MKTP.CD_DS2_en_csv_v2_988718.zip")
unzip("API_SP.DYN.IMRT.IN_DS2_en_csv_v2_990225.zip")

exclude_list <- c("World",
                  "High income",
                  "OECD members",
                  "Post-demographic dividend",
                  "IDA & IBRD total",
                  "Low & middle income",
                  "Middle income",
                  "IBRD only",
                  "East Asia & Pacific",
                  "Upper middle income",
                  "Europe & Central Asia",
                  "North America",
                  "Late-demographic dividend",
                  "European Union",
                  "East Asia & Pacific (excluding high income)",
                  "East Asia & Pacific (IDA & IBRD countries)",
                  "Euro area",
                  "Early-demographic dividend",
                  "Lower middle income",
                  "Latin America & Caribbean",
                  "Latin America & the Caribbean (IDA & IBRD countries)",
                  "Latin America & Caribbean (excluding high income)",
                  "Europe & Central Asia (IDA & IBRD countries)",
                  "Middle East & North Africa",
                  "South Asia",
                  "South Asia (IDA & IBRD)",
                  "Europe & Central Asia (excluding high income)",
                  "Arab World",
                  "IDA total",
                  "Sub-Saharan Africa",
                  "Sub-Saharan Africa (IDA & IBRD countries)",
                  "Sub-Saharan Africa (excluding high income)",
                  "Central Europe and the Baltics",
                  "Pre-demographic dividend",
                  "IDA only",
                  "Least developed countries: UN classification",
                  "IDA blend",
                  "Fragile and conflict affected situations",
                  "Heavily indebted poor countries (HIPC)",
                  "Low income",
                  "Small states",
                  "Other small states",
                  "Caribbean small states",
                  "Pacific island small states"
                  )

gdp <-
  read_csv("API_NY.GDP.MKTP.CD_DS2_en_csv_v2_988718.csv",
           skip = 3) %>%
  select(`Country Name`, gdp = `2018`) %>%
  mutate(gdp_bil = gdp * 10 ^ -9) %>%
  filter(!is.na(gdp), !`Country Name` %in% exclude_list)

chmrt <-
  read_csv("API_SP.DYN.IMRT.IN_DS2_en_csv_v2_990225.csv",
           skip = 3) %>%
  select(`Country Name`, chmort = `2018`) %>%
  filter(!is.na(chmort))

wb_data <- right_join(chmrt, gdp, by = "Country Name")

write_csv2(wb_data, "banco_mundial2018.csv")

unzip("API_SI.POV.GINI_DS2_en_csv_v2_988343.zip")

gini <-
  read_csv("API_SI.POV.GINI_DS2_en_csv_v2_988343.csv",
           skip = 3) %>%
  filter(`Country Name` == "United States") %>%
  select(-X65) %>%
  pivot_longer(
    cols = `1960`:`2019`,
    names_to = "Year",
    values_to = "gini_coef"
  ) %>%
  filter(!is.na(gini_coef)) %>%
  arrange(Year) %>%
  mutate(
    President = case_when(
      Year >= 2017 ~ "Trump",
      Year >= 2009 ~ "Obama",
      Year >= 2001 ~ "Bush Jr.",
      Year >= 1993 ~ "Clinton",
      Year >= 1989 ~ "Bush Sr.",
      Year >= 1981 ~ "Reagan",
      Year >= 1977 ~ "Carter",
      Year >= 1974 ~ "Ford",
      TRUE ~ NA_character_
    ),
    Year = factor(Year, ordered = TRUE)
  ) %>%
  select(`Country Name`, Year:President)

gdp_gini <-
  read_csv("API_NY.GDP.MKTP.CD_DS2_en_csv_v2_988718.csv", skip = 3) %>%
  filter(`Country Name` == "United States") %>%
  pivot_longer(
    cols = `1960`:`2019`,
    names_to = "Year",
    values_to = "GDP"
  ) %>%
  select(-(`Country Code`:X65)) %>%
  mutate(
    President = case_when(
      Year >= 2017 ~ "Trump",
      Year >= 2009 ~ "Obama",
      Year >= 2001 ~ "Bush Jr.",
      Year >= 1993 ~ "Clinton",
      Year >= 1989 ~ "Bush Sr.",
      Year >= 1981 ~ "Reagan",
      Year >= 1977 ~ "Carter",
      Year >= 1974 ~ "Ford",
      TRUE ~ NA_character_
    ),
    GDP_bil = GDP * 10 ^ -9
  ) %>%
  filter(!is.na(President)) %>%
  right_join(gini) %>%
  mutate(Year = factor(Year, ordered = TRUE)) %>%
  select(-GDP)

write_csv2(gdp_gini, "banco_mundial_desigualdade.csv")

cty <- c("India", "China", "Pakistan", "Afghanistan", "Sri Lanka", "Bangladesh", "Myanmar", "Lao PDR", "Thailand", "Vietnam", "Cambodia")

imr_2011 <-
  read_csv("API_SP.DYN.IMRT.IN_DS2_en_csv_v2_990225.csv", skip = 3) %>%
  filter(`Country Name` %in% cty) %>%
  select(Country = `Country Name`, IMR = `2011`) %>%
  arrange(desc(IMR))

write_csv2(imr_2011, "imr_sea_2011.csv")

