#' Launch app
#'
#' Launches the RFM shiny application.
#'
#' @return A Shiny application object of class \code{shiny.appobj}; printing it
#' launches the app.
#'
#' @examples
#' if (interactive()) {
#'   rfm_app()
#' }
#'
#' @import shiny
#' @export
#'
rfm_app <- function() {
  shinyApp(
    ui = app_ui,
    server = app_server
  )
}
