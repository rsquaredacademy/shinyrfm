#' Launch app
#'
#' Launches the RFM shiny application.
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
