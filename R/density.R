

#' Random number generator and plotter
#'
#' This function generates random normal numbers, and creates a density plot for them.
#' @param n Number of random normal numbers you'd like generated (default is 100)
#' @keywords random normal, plot
#' @export
#' @examples
#' dplot_rnorm()
#' dplot_rnorm(n = 1000)

dplot_rnorm <- function(n = 100) {
  numbers <- rnorm(n)
  d <- density(numbers)
  title <- sprintf("Density plot of %s random normal numbers", n)
  plot(d, main = title)
  polygon(d, col = "lightgrey")
}
