#' Convert Fahrenheit to Celsius
#'
#' This function converts a temperature from Fahrenheit to Celsius.
#'
#' @param f A numeric value representing the temperature in Fahrenheit.
#' @return The temperature in Celsius.
#' @export
to_c <- function(f) {
  (f - 32) * 5 / 9
}

#' Convert Celsius to Fahrenheit
#'
#' This function converts a temperature from Celsius to Fahrenheit.
#'
#' @param c A numeric value representing the temperature in Celsius.
#' @return The temperature in Fahrenheit.
#' @export
to_f <- function(c) {
  9 * c / 5 + 32
}

