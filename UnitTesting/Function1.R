# Function for adding a percent change column to a data frame with columns specified by MedianAQI
# "dataset" is the input dataset, followed by the column names x and y.

#***DAN: This is pretty good as a function spec (ignoring the guts for now), but maybe you could 
#be more precise about formats of the different arguments

#***DAN: your function will not run unless the second and third arguments are
#the specific values "MedianAQI.x", "MedianAQI.y". To see that, see what I have added
#to the chunk in Tests.Rmd that tests this function.

pctChange <- function(dataset, MedianAQI.x, MedianAQI.y)
{
  dataset$MedianAQI.z <- ((dataset$MedianAQI.y - dataset$MedianAQI.x) / dataset$MedianAQI.x * 100)
  return(dataset)
}


