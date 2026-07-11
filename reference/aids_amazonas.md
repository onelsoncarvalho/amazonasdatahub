# aids_amazonas - A dataset of AIDS occurrences from 2011 to 2023 in Amazonas

This dataset contains data of the AIDS occurrences in each municipality
from Amazonas.

## Usage

``` r
aids_amazonas
```

## Format

### \`aids_amazonas' A data frame with 1612 rows and 5 columns:

- code_muni:

  Municipality code

- name_muni:

  Municipality name

- cases:

  Case count

- gender:

  Gender of the infected individual - M for Male and F for female

- year:

  Year of observation

## Source

https://indicadores.aids.gov.br/

## Examples

``` r
# \donttest{
# Aids - case count in Manaus
# Loading dplyr and ggplot to structure the data
require(dplyr)
#> Loading required package: dplyr
#> 
#> Attaching package: ‘dplyr’
#> The following objects are masked from ‘package:stats’:
#> 
#>     filter, lag
#> The following objects are masked from ‘package:base’:
#> 
#>     intersect, setdiff, setequal, union
require(ggplot2)
#> Loading required package: ggplot2

# Filtering by municipality and plotting case count by gender
aids_amazonas %>%
  filter(name_muni == "Manaus") %>%
  group_by(gender) %>%
  ggplot(aes(x = year, y = cases, group = gender, color = gender)) +
  geom_line() +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal() +
  labs(
    title = "AIDS ocurrences in Manaus (2011-2023)",
    x = "Year",
    y = "Case count",
    color = "Gender"
  )

# }
```
