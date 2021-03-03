soil_intake = function(soil_class){
  
  if (soil_class == "Clay") return ("no capitalization")
  if (soil_class == "Silty clay") return ("no capitalization")
  if (soil_class == "Clay loam") return ("no capitalization")
  if (soil_class == "Loam") return ("no capitalization")
  if (soil_class == "Loamy sand") return ("no capitalization")
  if (soil_class == "Sand") return ("no capitalization")
  if (soil_class!= c("clay", "silty clay", "clay loam", "loam", "sandy loam", "loamy sand", "sand"))
      return("soil option not available choose from clay, silty clay, clay loam, loam, sandy loam, loamy sand, sand ")
  
  IR = case_when(
    soil_class == "clay" ~  0.1,
    soil_class == "silty clay" ~  0.15, 
    soil_class == "clay loam" ~  0.2, 
    soil_class == "loam" ~  0.35, 
    soil_class == "sandy loam" ~  0.4, 
    soil_class == "loamy sand" ~  0.5, 
    soil_class == "sand" ~  0.6
  )

  return(IR)
}
