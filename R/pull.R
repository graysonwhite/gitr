#' @title pull
#'
#' @description Pull
#'
#' @param ... Currently ignored. For extendability.
#'
#' @return
#' @examples
#' @export
pull <- function(...) {
  system(
    command = "git pull"
  )
}
