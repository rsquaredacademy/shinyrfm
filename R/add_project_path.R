#' Add project path
#'
#' Creates a `.Renviron` file and adds project path environment variable.
#'
#' @importFrom fs file_create
#'
#' @export
#'
add_project_path <- function() {
  cwd <- getwd()
  file_create(cwd, ".Renviron")
  path_env <- paste0('RFM_PROJECT_PATH="', cwd, '"')
  write(path_env, ".Renviron", append = TRUE)
}
