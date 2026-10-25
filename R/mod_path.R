#' Add Path 
#'
#' Shiny module for specifying project path. 
#'
#' @importFrom standby useToast toast 
#' @noRd
#'
path_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_path",
          div(class = "tab_container btn_end",
              div(
                tab_title('Retrieve Path & Projects'),
                fluidRow(
                  column(12, align = "center",
                         useToast(),
                         textInput(ns("path"), "Directory"),
                         actionButton(
                           ns("btn_lookup_path"),
                           "Retrieve Path", class = 'btn-path'),
                         actionButton(
                           ns("btn_save_path"), "Retrieve Projects",
                           class = 'btn-retrieve'))
                )
              ),
              fluidRow(
                column(6, align = 'left',
                       actionButton(
                         inputId = ns('back'), label = "Back",
                         icon = icon("long-arrow-left"),
                         class = 'btn-back',
                         onclick = "App.highlightTab(this, 'upload-tab')")
                )
              )
          )
  )
}

path_server <- function(id, parent, flag) {
  moduleServer(id, function(input, output, session) {

    observeEvent(input$btn_lookup_path, {
      folder_path <- Sys.getenv("RFM_PROJECT_PATH")
      if (folder_path != "") {
        toast(
          title = "",
          message = "Project path found successfully!",
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )

        updateTextInput(session, "path", "Directory", folder_path)

        if (flag() == "new_project") {
          toast(
            title = "",
            message = "Click on Add Project to create new project",
            duration = 2000,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )
        }

        if (flag() == "restore_project" || flag() == "clone_project" || flag() == "delete_project") {
          toast(
            title = "",
            message = "Click on Retrieve Projects to view projects",
            duration = 2000,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )
        }
      } else {
        toast(
          title = "",
          type = "warning",
          message = "Path not found! Enter path manually.",
          duration = 5000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )
      }
    })

    observeEvent(input$btn_save_path, {
      req(input$path)
      # check if global folder exists
      is_path <- dir.exists(paste0(input$path, "/rfm-projects"))

      if (!is_path) {
        dir.create(paste0(input$path, "/rfm-projects"))
      }

      set_dir_flag()
      set_path(input$path)

      if (flag() == "restore_project" || flag() == "clone_project" || flag() == "delete_project") {
        toast(
          title = "",
          type = "warning",
          message = paste0("Retrieving projects from `", input$path, "/rfm-projects`"),
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )
      }

      if (flag() == "new_project") {
        updateTabItems(session = parent, "tabs", "tab_add_project")
      }

      if (flag() == "restore_project" || flag() == "clone_project" || flag() == "delete_project") {
        updateTabItems(session = parent, "tabs", "tab_projects")
      }

    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_home")
    })

    return(
      list(
        path = reactive({ input$path }),
        btn = reactive({ input$btn_save_path })
      )
    )

  })
}
