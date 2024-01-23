
#' Function for making silly dwarf names
#' @param make_more_metal Should certain vowels be replaced with umlauts? Default is \code{TRUE}.
#' @return A single dwarf name
#' @importFrom stringr str_replace_all
#'
make_dwarf_name <- function(make_more_metal=TRUE){
  pre <- c("Strong","Iron","Root","Heart","Forge","Oak","Beer")
  post <- c("hammer","breaker","seeker","smasher","forger","drinker","miner","flipper")
  family_name <- paste0(sample(pre,1), sample(post,1))

  first <- c("Gol","Brug","Thor","Mar","Thel","Drun","Rog")
  suf <- c("morn","dren","gund","a","gar","star","rik","tor")
  first_name <- paste0(sample(first,1),sample(suf,1))

  combined_name <- paste(first_name,family_name)

  if(make_more_metal){
    combined_name <- str_replace_all(combined_name,"o","ö")
    combined_name <- str_replace_all(combined_name,"a","ä")
    combined_name <- str_replace_all(combined_name,"u","ü")
  }

  return(combined_name)
}

#' Randomly select dwarf job
#'
#' @return A single string with the job of the dwarf.
make_dwarf_job <- function(){
  possible_jobs <- c("Chef","Miner","Brewer","Ruler","Priest","Conductor","Farmer","Smith","Warrior")
  job <- sample(possible_jobs,1)
  return(job)
}

#' Randomly select dwarf age from a range
#'
#' @param min_age Minimum age of the dwarf.
#' @param max_age Maximum age of the dwarf.
#'
#' @return A single integer with the age of the dwarf.
make_dwarf_age <- function(min_age,max_age){

  if(missing(min_age)){
    stop("min_age must be provided")
  }

  if(missing(max_age)){
    stop("max_age must be provided")
  }

  if(!is.numeric(min_age)){
    stop("min_age must be numeric")
  }
  if(!is.numeric(max_age)){
    stop("max_age must be numeric")
  }

  min_age <- round(min_age)
  max_age <- round(max_age)
  age_range <- min_age:max_age
  age <- sample(age_range,1)
  return(age)
}








