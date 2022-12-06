#' @title push
#'
#' @description Push local commits
#'
#' @param ... Currently ignored. For extendability.
#'
#' @return
#' @examples
#' @export
push <- function(...) {
  system(
    command = "git push"
  )
}
