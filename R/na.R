#' Element selection conditional to NA identity
#'
#' @param x
#' @param do
#'
#' @return
#' @export
if_na = function(x, do){
  return(ifelse(is.na(x), do, x))
}

#' Element selection conditional to NA identity
#' Copy from above
#' @param x
#' @param do
#'
#' @return
#' @export
if_not_na = function(x, do){
  return(ifelse(is.na(x), NA, do))
}
