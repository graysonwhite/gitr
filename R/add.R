#' @export
add <- function(file = NULL) {
  system(
    command = paste("git add", file)
  )
}
