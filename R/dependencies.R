#' Dependencies
#'
#' Custom dependencies
#'
#' @importFrom htmltools htmlDependency
#' @noRd
#'
useDeps <- function() {
    htmlDependency(
      name = "wizard",
      version = "0.1.0",
      src = c(file = "wizard-0.1.0"),
      script = "js/app.js",
      stylesheet = "css/app.css",
      package = "shinytrack"
    )
}
