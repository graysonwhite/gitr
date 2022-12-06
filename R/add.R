#' @title add
#'
#' @description Add a file
#'
#' @param files File(s) to add
#' @param ... Currently ignored. For extendability.
#'
#' @return
#' @examples
#' @export
add <- function(files = NULL,
                ...) {
  system(
    command = paste("git add", files)
  )
}
