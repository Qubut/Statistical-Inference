library(dplyr)
library(magrittr)

skewness <- function(x_bar, p_50, s) {
  return(3 * (x_bar - p_50) / s)
}
skewed <- function(I) {
    
    result <- ifelse(I > 1,
      "The data is significantly skewed",
      "The data is not significantly skewed"
    )
    
    return(result)
}

x<-rnorm(100)

y <- x^2


I_x <- skewness(mean(x), quantile(x, 0.50), sd(x)) %>% skewed()

print(I_x)

I_y<-skewness(mean(y), quantile(y, 0.50), sd(y)) %>% skewed()

print(I_y)

