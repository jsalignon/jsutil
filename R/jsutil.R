
#######################################################
# printing after the magritt Tee pipe operator ( %T>% )

#' A function to return an object and printing its length.
#'
#' @param x A vector or list.
#' @return Returns the input and print its length.
#' @export
#' @examples
#' library(magrittr)
#' v1 = 1:10 %T>% plength
plength <- function(x) print(length(x))

#' A function to return an object and printing its number of columns.
#'
#' @param x A matrix or dataframe.
#' @return Return the input and print its number of columns.
#' @export
#' @examples
#' library(magrittr)
#' df <- data.frame(
#'  A = 1:10,
#'  B = letters[1:10],
#'  C = rnorm(10),
#'  D = rnorm(10)
#')
# df1 = cbind(df, df) %T>% pncol
pncol <- function(x) print(ncol(x))

#' A function to return an object and printing its number of rows.
#'
#' @param x A matrix or dataframe.
#' @return Return the input and print its number of rows.
#' @export
#' @examples
#' library(magrittr)
#' df <- data.frame(
#'  A = 1:10,
#'  B = letters[1:10],
#'  C = rnorm(10),
#'  D = rnorm(10)
#')
# df1 = rbind(df, df) %T>% pnrow
pnrow <- function(x) print(nrow(x))

#' A function to return an object and printing its dimensions.
#'
#' @param x A matrix or dataframe.
#' @return Return the input and print its dimensions.
#' @export
#' @examples
#' library(magrittr)
#' df <- data.frame(
#'  A = 1:10,
#'  B = letters[1:10],
#'  C = rnorm(10),
#'  D = rnorm(10)
#')
# df1 = rbind(df, df) %T>% pdim
pdim <- function(x) print(dim(x))


##############################################################
# printing the first or last n rows and columns of a dataframe

#' A function to print the first n rows and columns of the input.
#'
#' @param x A matrix or dataframe.
#' @param n Number of rows to display.
#' @param m Number of columns to display.
#' @return Return the input and print its dimensions.
#' @export
#' @examples
#' library(magrittr)
#' df <- data.frame(
#'  A = 1:10,
#'  B = letters[1:10],
#'  C = rnorm(10),
#'  D = rnorm(10)
#' )
#' hh(df, 2)
hh      <- function(x, n = 5, m = n) {
	print(x[1:min(n, nrow(x)), 1:min(m, ncol(x))])
}

#' A function to print the first n rows and columns of the input.
#'
#' @param x A matrix or dataframe.
#' @param n Number of rows to display.
#' @param m Number of columns to display.
#' @return Return the input and print its dimensions.
#' @export
#' @examples
#' library(magrittr)
#' df <- data.frame(
#'  A = 1:10,
#'  B = letters[1:10],
#'  C = rnorm(10),
#'  D = rnorm(10)
#' )
#' tt(df, 2)
tt      <- function(x, n = 5, m = n) {
	nr = nrow(x)
	nc = ncol(x)
	print(x[max(1, nr - n + 1):nr, max(1, nc - m + 1):nc])
}
