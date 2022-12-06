
# gitr

<!-- badges: start -->
<!-- badges: end -->

`gitr` is an R package that provides an R wrapper for Git commands.
Currently, `gitr` is under development and should be used at your own
risk.

## Installation

You can install the development version of gitr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("graysonwhite/gitr")
```

## Current features

Currently, `gitr` has four functions:  
- `add()` takes a character vector of file names and calls `git add` on
those files to add them to the Git index.  
- `commit()` calls `git commit` and will, by default, add all new or
changed files to the Git index. This behavior can be changed in the
function parameters.  
- `push()` calls `git push`.  
- `pull()` calls `git pull`.

## Simple example

Suppose your working directory is a Git repository with changed and new
files `my_function.R`, `text.txt`, and `docs.md`. If you wanted to
commit and push these files in R you could:

``` r
library(gitr)

commit(messsage = "My snazzy commit message")

push()
```

However, you may want to only commit one of these files, or use multiple
commits. `gitr` can accommodate this, as well:

``` r
# First, commit two files
commit("My first commit message",
       add_all = FALSE,
       files = c("text.txt", "docs.md"))

commit("add my function",
       add_all = FALSE,
       files = "my_function.R")

push()
```

`gitr` can also add files manually with `add()`, and then `commit()` and
`push()` them, like so:

``` r
file.create("some_new_file.txt")

add("some_new_file.txt")

commit(message = "add some new file",
       add_all = FALSE)

push()
```
