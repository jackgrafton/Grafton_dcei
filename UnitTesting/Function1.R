#Function for making years into decades
#yr is for the input of th year

AirDecMean <-function(yr){
 aggregate(yr ~ decade)
}