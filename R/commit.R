#' @export
commit <- function(file = NULL) {
  system(
    command = paste("git commit", file)
  )
}
