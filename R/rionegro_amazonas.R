#' rionegro_amazonas - A dataset of the Rio Negro River (Amazonas) level from 2003 to 2023
#'
#' This dataset contains data of the Rio Negro River level in the state of Amazonas (Brazil), compiling information on years, semesters and days, along with the river's level in meters and whether it filled or dropped (in centimeters).
#'
#' @format ## `rionegro_amazonas' A data frame with 8003 rows and 7 columns:
#' \describe{
#'   \item{level_m}{River level in meters}
#'   \item{increase_decrease_cm}{Wheter the river level filled or dropped (in centimeters)}
#'   \item{day}{Measurement day}
#'   \item{month}{Measurement month}
#'   \item{year}{Measurement year}
#'   \item{semester}{Measurement semester}
#' }
#'
#' @source Porto de Manaus. Nível do Rio Negro. https://portodemanaus.com.br/nivel-do-rio-negro/.
#'
#' @importFrom dplyr %>% filter
#' @importFrom ggplot2 ggplot aes geom_boxplot stat_boxplot theme_minimal
#' @examples
#' # Rio Negro - Boxplot (water level by year)
#'
#' # Loading ggplot
#' require(ggplot2)
#' require(dplyr)
#'
#' rionegro_amazonas %>%
#'   ggplot(aes(x = year, y = level_m, group = year)) +
#'   stat_boxplot(geom = "errorbar") +
#'   geom_boxplot() +
#'   theme_minimal() +
#'   labs(
#'     x = "Year",
#'     y = "Water level (m)"
#'   )
#'
"rionegro_amazonas"
