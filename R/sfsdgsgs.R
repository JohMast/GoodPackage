
#' Function for making silly dwarf names
#'
#' @return A dwarf name
#' @export
#'
#' @examples make_dwarf_name()
#'
make_dwarf_name <- function(){
  pre <- c("Strong","Iron","Root","Heart","Forge")
  post <- c("hammer","breaker","seeker","smasher","forger")
  family_name <- paste0(sample(pre,1), sample(post,1))

  first <- c("Gol","Brug","Thor","Mar")
  suf <- c("morn","dren","gund","a","gar")
  first_name <- paste0(sample(first,1),sample(suf,1))

  combined_name <- paste0(first_name,family_name)
  return(combined_name)
}

#' Title
#'
#' @return
#'
#' @examples
make_dwarf_job <- function(){
  return("good job")
}



