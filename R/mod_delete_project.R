#' Delete project 
#'
#' Shiny module for deleting projects. 
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param btn Reactive; retrieve and display projects.
#' @param path Reactive; path of project.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @noRd
#'
delete_project_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_del_project",
          div(class = "tab_container btn_end",
              div(
                tab_title('Delete Project'),
                fluidRow(
                  column(12, align = "center",
                         ui_list_projects(ns)
                  )
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

delete_project_server <- function(id, parent, btn, path) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    list_of_projects <- eventReactive(btn(), {
      # get_project_list(global$meta_info$path) %>%
      #   pull(Project)
      get_project_list(global$meta_info$path)$Project
    })

    observeEvent(btn(), {
      output$list_projects <- renderUI({
        if (length(list_of_projects() > 0)) {
          fluidRow(
            br(), br(),
            selectInput(ns("select_project"), label = "Select Project",
                        choices = list_of_projects()),
            br(),
            column(12, align = "center",
                   actionButton(
                     ns("btn_del_project"),
                     label = "Delete",
                     onclick = "App.highlightTab(this, 'upload-tab')"))
          )
        } else {
          fluidRow(
            column(12, align = "center",
                   img(src = "wizard-0.1.0/img/no-project.svg"),
                   h3("You have not created any projects yet"),
                   actionButton(ns("btn_create_project"), "Create project",
                                width = '150px')
            )
          )
        }
      })
    })

    observeEvent(input$btn_del_project, {

      toast(
        title = "",
        message = paste0("Deleting project `", input$select_project, "` ..."),
        duration = 2000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )

      unlink(paste0(path(), "/rfm-projects/", input$select_project), 
             recursive = TRUE)

      updateTabItems(session = parent, "tabs", "tab_home")

    })

    observeEvent(input$btn_create_project, {
      updateTabItems(session = parent, "tabs", "tab_add_project")
    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_home")
    })

  })
}
