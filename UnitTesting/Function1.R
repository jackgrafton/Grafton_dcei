# Function for adding a percent change column to a data frame with columns specified by MedianAQI
# "dataset" is the input dataset, followed by the column names x and y.

pctChange <- function(dataset, MedianAQI.x, MedianAQI.y)
{
  dataset$MedianAQI.z <- ((dataset$MedianAQI.y - dataset$MedianAQI.x) / dataset$MedianAQI.x * 100)
  return(dataset)
}


