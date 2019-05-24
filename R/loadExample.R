#' 
#'
#' A subset of T cells from the immune atlas data
#'
#' @source \url{https://doi.org/10.1101/409722}

#' loadExample
#' 
#' loads an example dataset
#'
#' @param dataset	Name of the dataset to be loaded.
#'                      E.g. \code{"dsAtac_ia_example"} for an example data for T cells
#'                      from the immune atlas dataset \url{https://doi.org/10.1101/409722}.
#' @return The example dataset
#' @author Fabian Mueller
#' @export
#' @examples 
#' dsa <- loadExample("dsAtac_ia_example")
#}
loadExample <- function(dataset){
  res <- NULL
  if (dataset=="dsAtac_ia_example"){
  	res <- ChrAccR::loadDsAcc(system.file("extdata", "dsAtac_ia_example", package="ChrAccRex"))
  } else {
  	stop(paste("Unknown dataset:", dataset))
  }
  return(res)
}
