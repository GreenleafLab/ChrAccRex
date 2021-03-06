#' 
#'
#' A subset of T cells from the immune atlas data
#'
#' @source \url{https://doi.org/10.1101/409722}
#' 
#'
#' A subset of single-cell ATAC data of hematopoietic cells
#'
#' @source \url{https://doi.org/10.1038/s41587-019-0332-7}
#' 

#' loadExample
#' 
#' loads an example dataset
#'
#' @param dataset	Name of the dataset to be loaded.
#'                      E.g. \code{"dsAtac_ia_example"} for an example data for T cells
#'                      from the immune atlas dataset \url{https://doi.org/10.1101/409722}.
#' 						Or \code{"dsAtacSc_hema_example"} for an example data for single-cell
#'                      ATAC data from hematopoietic cells \url{https://doi.org/10.1038/s41587-019-0332-7}.
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
  } else if (dataset=="dsAtacSc_hema_example"){
  	res <- ChrAccR::loadDsAcc(system.file("extdata", "dsAtacSc_hema_example", package="ChrAccRex"))
  } else if (dataset=="itLsiObj_hema_example"){
  	res <- readRDS(system.file("extdata", "dsAtacSc_hema_example", "itLsiObj.rds", package="ChrAccRex"))
  } else {
  	stop(paste("Unknown dataset:", dataset))
  }
  return(res)
}
