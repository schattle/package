fish_stats = function(fish_vector, graph = FALSE) {
  
  fish_factor <- as.factor(fish_vector) # convert vector to factor
  most_common = names(which.max(summary(fish_factor))) # find names of most common fish
  rarest_fish = names(which.min(summary(fish_factor))) # find names of rarest fish
  total_fish  = sum((summary(fish_factor))) # count the total number of fish
  
  # make a histogram
  plottitle = sprintf(" Total Number of Fish Caught: %d \n Most Common Fish: %s \n Rarest Fish: %s", sum(summary(fish_factor)), names(which.max(summary(fish_factor))), names(which.min(summary(fish_factor))))
  
  fish_graph <- ggplot(data.frame(fish_vector)) +
             aes(fish_vector, fill = fish_vector)  +
             geom_histogram(stat = "count", show.legend = FALSE) +
             labs(title = plottitle, x = "Fish Species", y = "Count") +
             theme_classic()
  
  # return a list of each specific fish and value
  fish_values <- list(c(sprintf("Most common fish: %s", most_common),
                        sprintf("Rarest fish: %s", rarest_fish),
                        sprintf("Total fish: %d", total_fish)))
  
  # show graph if graph is TRUE, otherwise show values
  if(graph == TRUE) {
    return(fish_graph)
  } else
  return(fish_values)
}
