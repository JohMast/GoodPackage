#' Print a random dwarf character with name, age, and job.
#' @param min_age (Optional) The minimum age of the dwarf (numeric)
#' @param max_age (Optional) The maximum age of the dwarf (numeric)
#' @param make_more_metal Should certain vowels be replaced with umlauts? Default is \code{TRUE}.
#' @return A single string with the dwarf's name, age, and job.
#' @export
#'
#' @examples print_dwarf(min_age=30,max_age=60)
print_dwarf <- function(min_age=18,max_age=150,make_more_metal=T){
  name <- make_dwarf_name(make_more_metal = make_more_metal)
  age <- make_dwarf_age(min_age=min_age,max_age=max_age)
  job <- make_dwarf_job()
  return(paste0(name,", ",age, ", ", job))
}
