# Function for adding a percent change column to a data frame with columns specified by MedianAQI
# "dataset" is the input dataset, followed by the column names x and y.
#' Percent change between two columns in a data frame
#' @param dataset Dataframe or matrix being used.
#' @param x Name of column 1.
#' @param y Name of column 2.
#' @return The a column of percent changes from \code{x} to \code{y}
#' @keywords percent, change
#' @examples
#' pctC(temperature, temp80, temp18)

pctC <- function(dataset, x, y){
  # colnames<- c(x, y)
  new_df <<- dataset[, c(x,y)]
  new_df$z <- ((new_df[,2] - new_df[,1]) / new_df[,1] * 100)
  return(new_df)
}
