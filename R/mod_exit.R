#' Exit app. 
#' 
#' Shiny module for exiting app. 
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param flag Reactive; project type.
#'
#' @noRd
#'
exit_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_exit",
          div(class = "tab_container",
              fluidRow(
                column(12, align = 'center',
                       h2("Thank you for using", strong("Segment Wizard"), "!"))),
              fluidRow(
                column(12, align = 'center',
                       actionButton(ns("btn_save_exit"), "Save & Exit")))
          )
  )
}

exit_server <- function(id, parent, flag) {
  moduleServer(id, function(input, output, session) {

    observeEvent(input$btn_save_exit, {
      if (flag() != "analyze" || flag() != "sample") {
        proj_meta <- global$meta_info
        if (!is.null(global$proj_info$title)) {
          if (proj_meta$dir_flag) {
            if (!is.null(global$project_data$raw_data)) {
              if (flag() == "new_project") {
                dir.create(
                  paste0(proj_meta$path, "/",
                         proj_meta$global_dir, "/",
                         global$proj_info$title))
              }

              # save metadata to .rds file
              saveRDS(global$proj_info,
                         paste0(proj_meta$path, "/",
                                proj_meta$global_dir, "/",
                                global$proj_info$title, "/_",
                                global$proj_info$title, ".rds"))

              # write_yaml(global$proj_info,
              #            paste0(proj_meta$path, "/",
              #                   proj_meta$global_dir, "/",
              #                   global$proj_info$title, "/_",
              #                   global$proj_info$title, ".yml"))

              saveRDS(global$project_data,
                      paste0(proj_meta$path, "/",
                             proj_meta$global_dir, "/",
                             global$proj_info$title, "/data"))
              
              stopApp()
            } else {
              # redirect the user to upload data or exit without saving the project
              toast(
                title = "",
                message = paste0("Redirecting to ", strong("Upload page"), " as you have not uploaded any data!"),
                duration = 4000,
                background_color = "#0f1a34",
                progress_bar_color = "white",
                message_color = "white",
                position = "bottomCenter"
              )

              updateTabItems(session = parent, "tabs", "tab_upload")
            }
          }
        }
      }
      stopApp()
    })

  })
}
