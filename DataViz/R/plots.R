#' Create a histogram

#' @param data A data frame.
#' @param x_var A string name of the column for x-axis (numeric).
#' @param bins Number of bins (default = 30).
#'
#' @return A ggplot2 histogram object.
#' @export

create_histogram <- function(data, x_var, bins = 30) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x_var)) +
    ggplot2::geom_histogram(bins = bins, fill = "steelblue", color = "white") +
    ggplot2::theme_minimal()
}

#' Create a bar chart

#' Create a Bar Chart
#'
#' @param data A data frame.
#' @param x_var Name of the x-axis column.
#' @param y_var Name of the y-axis column.
#'
#' @return A ggplot2 bar chart object.
#' @export

create_barchart <- function(data, x_var, y_var) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x_var, y = y_var)) +
    ggplot2::geom_bar(stat = "identity", fill = "red", color = "black") +
    ggplot2::theme_minimal()
}

#' Create a scatter plot

#' Create a Scatter Plot
#'
#' @param data A data frame.
#' @param x_var X-axis variable name (string).
#' @param y_var Y-axis variable name (string).
#'
#' @return A ggplot2 scatter plot object.
#' @export

create_scatterplot <- function(data, x_var, y_var) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x_var, y = y_var)) +
    ggplot2::geom_point(color = "blue", size = 3, alpha = 0.7) +
    ggplot2::theme_minimal()
}



