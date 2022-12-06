#' @title pull
#'
#' @description Pull
#'
#' @param ... Currently ignored. For extendability.
#'
#' @return Pulls changes not yet on local device
#' @examples
#' \dontrun{
#' pull()
#' }
#' @export
pull <- function(...) {
  system(
    command = "git pull"
  )
}
