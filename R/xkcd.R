#' @title
#' retrieve metadata about and xkcd comic
#' @description
#' Given an xkcd comic number, this function retrieves a JSON objevt describing that comic from the official xkdc API.
#' @importFrom jsonlite read_json
#' @export


xkcd <- function(number) {
  url <- file.path("https://xkcd.com", number, "info.0.json")
  results <- jsonlite::read_json(url)
  return(results)
}

# devtools::document()
# devtools::install()
# open a new session
# library(xkcd)
# xkcd(600)
