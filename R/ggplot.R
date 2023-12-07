#' Rotate the x axis labels
#' Helper function
#' @param angle
#' @param hjust
#'
#' @return
#' @export
rotate_x_axis_labels = function(angle = 45, hjust = 1){
  return(theme(axis.text.x = element_text(angle = angle, hjust = hjust)))
}
