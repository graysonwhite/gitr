#' @title Commit
#'
#' @description Commit (and add) files
#'
#' @param message Commit message
#' @param files Character vector of file(s) to commit. Unnecessary if
#' add_all=TRUE or if files have already been added with add() or git add.
#' @param add_all If TRUE, all changed and new files will be added with git add
#' before commit them.
#' @param ... Currently ignored. For extendability.
#'
#' @return Commits (and adds) files to Git
#' @examples
#' \dontrun{
#' # Create a new file and commit it (add_all = TRUE)
#' file.create("syllabus.txt")
#' commit(message = "add syllabus", add_all = TRUE)
#'
#' # Create two new files and only commit one of them (add_all = FALSE)
#' file.create("hw1.txt")
#' file.create("hw1_solutions.txt")
#' commit(message = "upload hw1",
#'        files = "hw1.txt")
#'
#' # Create a new file, add it to Git manually, and commit it
#' file.create("hw2.txt")
#' add("hw2.txt")
#' commit(message = "upload hw2")
#' }
#' @export
commit <- function(message,
                   files = NULL,
                   add_all = FALSE,
                   ...) {
  if (add_all == TRUE) {
    # Add all files in working directory
    system(
      command = "git add ."
    )
    # Commit all files added above
    system(
      command = paste0("git commit -m ",
                       "'", message, "'")
    )
  } else if (!is.null(files)) { # Adds files if specified by user
    # Collapse files into a string of length 1
    files_string <- paste(files, collapse = " ")

    # Add all files specified in files argument
    system(command = paste0("git add ", files_string))

    # Commit specified files
    system(command = paste0("git commit -m ",
                            "'", message, "' ",
                            files_string))
  } else {
    # Commits files already added, either with gitr::add() or git add
    system(command = paste0("git commit -m ",
                            "'", message, "' "))
  }
}
