# humidity_manaus

Séries temporais com valores extremos de intervalo limitado

### Descrição

Uma base de dados de séries temporais que consiste no mínimo de umidade
relativa observada na cidade de Manaus, de janeiro de 2009 até dezembro
de 2020. Essa base de dados é uma amostra com tamanho n = 144 blocos
mensais.

### Uso

``` r

humidity_manaus
```

### Formato

‘humidity_manaus’ Uma tibble com 144 linhas e 5 colunas.

#### year

Ano na qual a observação foi feita.

#### rh

Umidade Relativa (Relative Humidity)

#### dbt

Temperatura do Búlbo Seco (Dry Bulb Temperature)

#### wbt

Temperatura do Búlbo Úmido (Wet Bulb Temperature)

#### month

Mês na qual a observação foi feita.

### Fonte

NASCIMENTO, Leonardo Brandão Freitas; LIMA, Max Sousa; DUCZMAL, Luiz H.
P-min-stable regression models for time series with extreme values of
limited range. Environmetrics, Issue 2, v. 36, 2025.

### Exemplos

``` r

require(amazonasdatahub)
require(dplyr)
require(ggplot2)

# Criando variavel de data unindo ano e mes, e em seguida,
# plotando o grafico
humidity_manaus %>%
  mutate(date = as.Date(paste0(year, "-", month, "-","01"))) %>%
  ggplot(aes(x = date, y = rh)) +
  geom_line() +
  theme_minimal() +
  labs(
    title = "Umidade Relativa de Manaus (2010 - 2020)",
    x = "Data",
    y = "Umidade Relativa"
  )
```

![](humidity_manaus_files/figure-html/unnamed-chunk-2-1.png)
