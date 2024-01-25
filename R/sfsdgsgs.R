# Internal functions for dwarf building


#' Function for making silly dwarf names
#' @param make_more_metal Should certain vowels be replaced with umlauts? Default is \code{TRUE}.
#' @return A single dwarf name
#' @importFrom stringr str_replace_all
#'
make_dwarf_name <- function(make_more_metal=TRUE){

  # Part 1: Make dwarven clan name by pasting random suffix to a random root
  c_root <- c("Strong","Iron","Root","Heart","Forge","Oak","Beer")
  c_suffix <- c("hammer","breaker","seeker","smasher","forger","drinker","miner","flipper")
  clan_name <- paste0(sample(c_root,1), sample(c_suffix,1))

  # Part 2: Make dwarven first name by pasting random suffix to a random root
  f_root <- c("Gol","Brug","Thor","Mar","Thel","Drun","Rog","Thu","Ran","Gon","Gan","Ven")
  f_suffix <- c("morn","dren","gund","a","gar","star","rik","tor","dal","dul","rul","tak")
  first_name <- paste0(sample(f_root,1),sample(f_root,1))

  # Part 3: Combine the first name and clan name by pasting them together
  combined_name <- paste(first_name,clan_name)

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








