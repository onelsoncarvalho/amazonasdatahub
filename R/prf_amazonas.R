#' prf_amazonas - Traffic accident data from Amazonas recorded by Federal Highway Police (2012-2025)
#'
#' Traffic accident data from Amazonas (2012-2025)
#'
#' @format ## `prf_amazonas' A data frame with 116 rows and 30 columns:
#' \describe{
#'   \item{id}{Record ID}
#'   \item{date}{Date of the record - yyyy-mm-dd}
#'   \item{days_of_week}{Day of the week}
#'   \item{time}{Hour of the record}
#'   \item{federative_unit}{Federative unit (UF)}
#'   \item{br}{Federal Highway}
#'   \item{km}{Kilometer of BR}
#'   \item{municipality}{Municipality}
#'   \item{accident_cause}{Accident cause}
#'   \item{accident_type}{Accident type}
#'   \item{accident_classification}{Accident classification: victims, no victims, unharmed victims, fatal victims}
#'   \item{road_direction}{Road direction}
#'   \item{weather}{Weather conditions at the time of the accident}
#'   \item{track_type}{Track type: Simples, Múltipla ou Dupla}
#'   \item{track_layout}{Track layout}
#'   \item{land_use}{Land use}
#'   \item{people}{People involved in the accident}
#'   \item{deceased}{Death toll}
#'   \item{minor_injuries}{Number of victims with minor injuries}
#'   \item{serious_injuries}{Number of victims with serious injuries}
#'   \item{unharmed}{Number of unharmed victims}
#'   \item{ignored}{Ignored}
#'   \item{harmed}{Number of harmed victims}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{regional}{Superintendency of the Federal Highway Police of Brazil}
#'   \item{police_station}{Police station where the report was filed}
#'   \item{operating_unit}{Operating unit and police station}
#' }
#'
#' @source https://www.gov.br/prf/pt-br/acesso-a-informacao/dados-abertos/dados-abertos-da-prf
#'
#' @examples
#' \donttest{
#' # Accident count by weather condition
#' # Loading dplyr and ggplot
#' require(dplyr)
#' require(ggplot2)
#' require(forcats)
#'
#' # Counting accidents by weather condition and ploting
#' prf_amazonas %>%
#'   count(weather) %>%
#'   mutate(
#'     weather = fct_reorder(weather, -n)
#'   ) %>%
#'   ggplot(aes(x = weather, y = n)) +
#'   geom_bar(stat = "identity", fill = "steelblue") +
#'   geom_text(aes(label = n), vjust = -0.5) +
#'   theme_minimal() +
#'   labs(
#'     title = "Accident count by weather condition",
#'     x = "Weather",
#'     y = "Count"
#'   )
#' }
#'
"prf_amazonas"
