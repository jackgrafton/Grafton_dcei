# This function finds significant values out of a matrix, in order to quickly find values over 30
# or under -30
# which will help in analysis.

# newxb is a variable that finds xb input values more than 30 or less than -30

Find_Significant <- function(xb)
  {
  newxb <- (xb > 30 | xb < -30)
  return(newxb)
  }

