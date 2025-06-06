
# grit

<!-- badges: start -->
<!-- badges: end -->

`grit` is an R package that provides an R wrapper for Git commands.
Currently, `grit` is under development and should be used at your own
risk.

## Installation

You can install the development version of grit from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("graysonwhite/grit")
```

## Current features

Currently, `grit` has four functions:  
- `add()` takes a character vector of file names and calls `git add` on
those files to add them to the Git index.  
- `commit()` calls `git commit` and can either add all new or changed
files to the Git index by setting `add_all = TRUE`, add a specific set
of files to the Git index with the `files` argument, or will just commit
files already `add()`ed to the Git index by default.  
- `push()` calls `git push`.  
- `pull()` calls `git pull`.

## Simple example

Suppose your working directory is a Git repository with locally changed
and/or new files `my_function.R`, `text.txt`, and `docs.md`. If you
wanted to commit and push these files in R you could:

``` r
library(grit)

commit(messsage = "My snazzy commit message",
       add_all = TRUE)

push()
```

However, you may want to only commit one of these files, or use multiple
commits. `grit` can accommodate this scenario as well:

``` r
# First, commit two files
commit("My first commit message",
       files = c("text.txt", "docs.md"))

commit("add my function",
       files = "my_function.R")

push()
```

`grit` can also add files manually with `add()`, and then `commit()` and
`push()` them, like so:

``` r
add("some_new_file.txt")

commit(message = "add some new file")

push()
```

If you’d like to pull remote changes from a repository, `grit` also
makes this easy with the `pull()` function:

``` r
pull()
```
