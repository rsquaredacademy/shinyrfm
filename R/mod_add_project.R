#' Add project
#'
#' Shiny module for creating a new project.
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @noRd
#'
add_project_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_add_project",
          div(class = "tab_container btn_end",
              div(
                tab_title('Add Project'),
                fluidRow(
                  column(12, align = "center",
                         textInput(ns("project_title"), "Project Title"),
                         actionButton(inputId = ns("btn_create_project"),
                          label = "Create Project",
                          class = "btn-create-new-project",
                          onclick = "App.highlightTab(this, 'next-tab')"))
                )
              ),
              fluidRow(
                column(6, align = 'left',
                       actionButton(inputId = ns('back'), label = "Back",
                                    icon = icon("long-arrow-left"))
                ),
                column(6, align = 'right',
                       actionButton(inputId = ns('next'), label = "Next",
                                    icon = icon("long-arrow-right"),
                                    class = 'btn-next',
                                    onclick = "App.highlightTab(this, 'next-tab')")
                )
              )
          )
  )
}

add_project_server <- function(id, parent) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    observeEvent(input$btn_create_project, {

      set_project_title(input$project_title)

      project_path <- paste0(global$meta_info$path, "/",
                             global$meta_info$global_dir, "/",
                             input$project_title)

      # check if a project of the same name already exists
      check_project <- dir.exists(project_path)

      if (check_project) {

        toast(
          title = "",
          message = paste0("Project `", input$project_title, "` already exists. Please choose a different name!"),
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )

        updateTextInput(session, "project_title", value = "")
      } else {


        toast(
          title = "",
          message = paste0("Creating new project `", input$project_title, "`..."),
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )

        updateTextInput(session, "project_title", value = "")
        updateTabItems(session = parent, "tabs", "tab_upload")
      }

    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_projects")
    })

    observeEvent(input$`next`, {
      updateTabItems(session = parent, "tabs", "tab_upload")
    })


  })
}
