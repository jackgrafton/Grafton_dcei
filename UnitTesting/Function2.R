#Finds the state of interest, ms
#ms signifies microsatellite in state abbreviation

find_state<-function(ms,seq)
{
  ncms<-nchar(ms)
  
  res<-c()
  for (counter in 1:(nchar(seq)-ncms+1))
  {
    if (ms==substr(seq,counter,counter+ncms-1))
    {
      res<-c(res,counter)
    }
  }
  
  return(res)
}