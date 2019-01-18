
fahr_to_celsius <- function(fahr) {
  celsius <- (fahr-32)*5/9
  return(celsius)
}

#Formula:9/5 of celsius plus 32
celsius_to_fahr<-function(celsius){
  fahr<-(celsius*9/5)+32
  return(fahr)
}

celsiusok=fahr_to_celsius(airtemps)
fahrok=celsius_to_fahr(celsiusok)
airtemps==fahrok

temp_dif_units=data.frame(celsiusok,fahrok)
write.csv(temp_dif_units,file="temp_dif_u.csv")
