#' Convert Fahrenheit to Celsius
#'
#' This function converts a temperature value from Fahrenheit to Celsius.
#'
#' @param f A numeric value representing the temperature in Fahrenheit.
#'
#' @return The temperature in Celsius.
#' @export
#'
#' @examples
#' to_c(32)  # Should return 0
#' to_c(212) # Should return 100
f_to_c <- function(f) 
  (f - 32) * 5 / 9

#' Convert Celsius to Fahrenheit
#'
#' This function converts a temperature value from Celsius to Fahrenheit.
#'
#' @param c A numeric value representing the temperature in Celsius.
#'
#' @return The temperature in Fahrenheit.
#' @export
#'
#' @examples
#' to_f(0)    # Should return 32
#' to_f(100)  # Should return 212
c_to_f <- function(c) 
  9 * c / 5 + 32



