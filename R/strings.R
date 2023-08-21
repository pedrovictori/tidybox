#' Replace vector of patterns with a vector of new text
#' Every pattern in the vector is matched to a replacement, so that the matches
#' for the first pattern in the vector are replaced by the first element of the
#' replacement vector, and so on.
#' @param x Input string
#' @param pattern A vector of patterns to look for.
#' @param replacement A vector of replacement strings
#'
#' @return A string with the pattern replacements performed.
#' @export
str_replace_vector = function(x, pattern, replacement){
  reduce(seq_along(pattern),
         ~str_replace_all(.x, pattern[.y], replacement[.y]),
         .init = x)
}
