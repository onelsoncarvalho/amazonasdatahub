# rionegro_amazonas - A dataset of the Rio Negro River (Amazonas) level from 2003 to 2023

This dataset contains data of the Rio Negro River level in the state of
Amazonas (Brazil), compiling information on years, semesters and days,
along with the river's level in meters and whether it filled or dropped
(in centimeters).

## Usage

``` r
rionegro_amazonas
```

## Format

### \`rionegro_amazonas' A data frame with 8003 rows and 7 columns:

- level_m:

  River level in meters

- increase_decrease_cm:

  Wheter the river level filled or dropped (in centimeters)

- day:

  Measurement day

- month:

  Measurement month

- year:

  Measurement year

- semester:

  Measurement semester

## Source

Porto de Manaus. Nível do Rio Negro.
https://portodemanaus.com.br/nivel-do-rio-negro/.

## Examples

``` r
# Rio Negro - Boxplot (water level by year)

# Loading ggplot
require(ggplot2)
require(dplyr)

rionegro_amazonas %>%
  ggplot(aes(x = year, y = level_m, group = year)) +
  stat_boxplot(geom = "errorbar") +
  geom_boxplot() +
  theme_minimal() +
  labs(
    x = "Year",
    y = "Water level (m)"
  )

```
