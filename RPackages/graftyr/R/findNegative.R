#' Return the Negative Values in a Dataset
#' @param x a data frame.
#' @return the values in \code{x} that negative
#' @keywords negative, find
#' @examples
#' findNegative(STaqiChange)
findNegative <- function(x){
  newx <- x
  for(i in 1:length(x))
  {
    if(is.numeric(x[[i]]))
    {
      # extract the i column of x
      extract <- x[i]
      ext <- (extract < 0)
      newx[i] <- ext
      newx <- subset(newx, newx[i]=="TRUE")
      return(newx)
    }
  }
}
