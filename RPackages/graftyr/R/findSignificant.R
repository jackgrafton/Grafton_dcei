# This function finds significant values out of a matrix, in order to quickly find values over 30
# or under -30
# which will help in analysis.
# newxb is a variable that finds xb input values more than 30 or less than -30
#' Find significant values above 30 or below -30 in a data frame
#' @param xb A set of numbers, data frame or matrix
#' @return True or false statements on whether \code{xb} data is significant
#' @keywords big, number, large
#' @examples
#' findSignificant(STaqiChange)

findSignificant <- function(xb)
  {
  if(is.data.frame(xb))
  {
    newxb <- xb
    # loop through the columns of newxb
      # if the column is a numeric column then do something to it
      # else do nothing
    for(i in 1:length(xb))
      {
      if(is.numeric(xb[[i]]))
        {
        # extract the i column of xb
        extract <- xb[i]
        # manipulate it to find extreme values
        exb <- (extract > 30 | extract < -30)
        # make the i column of newxb be that result
        newxb[i] <- exb
        newxb <- subset(newxb, newxb[i]=="TRUE")
        }
      }
    return(newxb)
  }else
  {
    newxb <- (xb > 30 | xb < -30)
    return(newxb)
  }

  }

