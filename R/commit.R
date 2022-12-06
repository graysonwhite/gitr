#' @title Commit
#'
#' @description Commit a file
#'
#' @param message Commit message
#' @param files File(s) to commit
#' @param ... Currently ignored. For extendability.
#'
#' @return
#' @examples
#' @export
commit <- function(message,
                   files = NULL) {
  system(
    command = paste0("git commit -m ", "'", message, "' ", files)
  )
}
