#' aids_amazonas - A dataset of AIDS occurrences from 2011 to 2023 in Amazonas
#'
#' This dataset contains data of the AIDS occurrences in each municipality from Amazonas.
#'
#' @format ## `aids_amazonas' A data frame with 1612 rows and 5 columns:
#' \describe{
#'   \item{code_muni}{Municipality code}
#'   \item{name_muni}{Municipality name}
#'   \item{cases}{Case count}
#'   \item{gender}{Gender of the infected individual - M for Male and F for female}
#'   \item{year}{Year of observation}
#' }
#'
#' @source BRASIL. Ministério da Saúde. Departamento de HIV, Aids, Tuberculose, Hepatites Virais e Infecções Sexualmente Transmissíveis. Indicadores HIV, Aids. Available in: https://indicadores.aids.gov.br/.
#'
#' @examples
#' \donttest{
#' # Aids - case count in Manaus
#' # Loading dplyr and ggplot to structure the data
#' require(dplyr)
#' require(ggplot2)
#'
#' # Filtering by municipality and plotting case count by gender
#' aids_amazonas %>%
#'   filter(name_muni == "Manaus") %>%
#'   group_by(gender) %>%
#'   ggplot(aes(x = year, y = cases, group = gender, color = gender)) +
#'   geom_line() +
#'   scale_color_manual(values = c("blue", "red")) +
#'   theme_minimal() +
#'   labs(
#'     title = "AIDS ocurrences in Manaus (2011-2023)",
#'     x = "Year",
#'     y = "Case count",
#'     color = "Gender"
#'   )
#' }
#'
"aids_amazonas"
