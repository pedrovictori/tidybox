#' Negated filter
#'
#' @param .data
#' @param ...
#' @param .by
#' @param .preserve
#'
#' @return
#' @export
exclude = function(.data, ..., .by = NULL, .preserve = FALSE){
  fil = rlang::expr(...)
  dplyr::filter(.data, !eval(fil), .by = .by, .preserve = .preserve)
}

#' Filter and remove the variables that were filtered on
#'
#' @param .data
#' @param ...
#' @param .by
#' @param .preserve
#'
#' @return
#' @export
distil = function(.data, ..., .by = NULL, .preserve = FALSE){
  q = rlang::quo(...)
  cols = extract_var_names(q, colnames(.data))
  df = dplyr::filter(.data, ..., .by = .by, .preserve = .preserve)
  df = df %>% dplyr::select(-tidyselect::any_of(cols))
  return(df)
}

extract_var_names = function(q, cols, cn = character()) {
  len = length(q)
  if (len > 1) {
    for (i in 1:len) {
      cn = extract_var_names(q[[i]], cols, cn)
    }
  } else if (rlang::is_symbol(q)) {
    sq = rlang::as_name(q)
    if (sq %in% cols) {
      cn = c(cn, sq)
    }
  }
  return(cn)
}
