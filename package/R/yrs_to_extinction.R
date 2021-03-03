yrs_to_extinction = function(pop_size, yr) {
  # while loop
  while ((pop_size > 1) && (yr < 1000))  {
    # decrease pop
    pop_size = pop_size - 0.02 * pop_size 
    # measure time
    yr = yr + 1
  }
}