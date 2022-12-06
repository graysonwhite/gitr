#' @title push
#'
#' @description Push local commits
#'
#' @param ... Currently ignored. For extendability.
#'
#' @return Pushes local commits
#' @examples
#' \dontrun{
#' file.create("new_file.txt")
#' commit("new_file.txt")
#' push()
#' }
#' @export
push <- function(...) {
  system(
    command = "git push"
  )
}
