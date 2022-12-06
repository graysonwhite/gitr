#' @export
commit <- function(message,
                   file = NULL) {
  system(
    command = paste0("git commit -m ", "'", message, "' ", file)
  )
}
