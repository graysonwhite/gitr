#' @title add
#'
#' @description Add a file
#'
#' @param files Character vector of file(s) to add.
#' @param ... Currently ignored. For extendability.
#'
#' @return Adds files 
#' @examples
#' \dontrun{
#' file.create("new_file.txt")
#' add("new_file.txt")
#' }
#' @export
add <- function(files = NULL,
                ...) {
  # Collapse files into a string of length 1
  files_string <- paste(files, collapse = " ")
  
  system(
    command = paste("git add", files_string)
  )
}
