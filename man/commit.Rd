% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/commit.R
\name{commit}
\alias{commit}
\title{Commit}
\usage{
commit(message, files = NULL, add_all = FALSE, ...)
}
\arguments{
\item{message}{Commit message}

\item{files}{Character vector of file(s) to commit. Unnecessary if
add_all=TRUE or if files have already been added with add() or git add.}

\item{add_all}{If TRUE, all changed and new files will be added with git add
before commit them.}

\item{...}{Currently ignored. For extendability.}
}
\value{
Commits (and adds) files to Git
}
\description{
Commit (and add) files
}
\examples{
\dontrun{
# Create a new file and commit it (add_all = TRUE)
file.create("syllabus.txt")
commit(message = "add syllabus", add_all = TRUE)

# Create two new files and only commit one of them (add_all = FALSE)
file.create("hw1.txt")
file.create("hw1_solutions.txt")
commit(message = "upload hw1",
       files = "hw1.txt")

# Create a new file, add it to Git manually, and commit it
file.create("hw2.txt")
add("hw2.txt")
commit(message = "upload hw2")
}
}
