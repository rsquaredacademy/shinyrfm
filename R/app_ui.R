#' User interface
#'
#' Main interface of the package
#'
#' @import shinydashboardPlus
#' @importFrom shinydashboard dashboardBody sidebarMenu tabItems
#' @noRd
#'
app_ui <- function() {
  tagList(
    dashboardPage(
      md = FALSE,
      skin = "midnight",
      title = "Segment Wizard",
      header = dashboardHeader(title = "Segment Wizard"),
      sidebar = dashboardSidebar(),
      body = dashboardBody()
    ),
    useDeps()
  )
}
