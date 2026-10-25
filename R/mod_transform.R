#' Transform data 
#'
#' Shiny module for data transformation. 
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param flag Reactive; project type flag.
#' @param data Reactive; sample or user uploaded data. 
#' @param input, output, session Internal parameters for {shiny}
#'
#' @noRd
#' 
transform_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_transform",
          div(class = "tab_container btn_end",
              div(
                fluidRow(
                  column(12, uiOutput(ns('ui_transform')))
                )
              ),
              btn_delay(ns)
          )
  )
}

transform_server <- function(id, parent, data, flag) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    output$ui_transform <- renderUI({
      if (flag() == "restore_project" || flag() == "clone_project") {
        col_info <- global$proj_info
        if (!is.null(col_info$cols_selected) && !is.null(col_info$col_new_names) && !is.null(col_info$col_new_types)) {
          restore_transform_inputs(ns, data, col_info$cols_selected,
                                       col_info$col_new_names, col_info$col_new_types)
        } else {
          transform_data(ns, data)  
        }
        
      } else {
        transform_data(ns, data)
      }
    })

    col_data_types <- reactive({
      column_metadata(data, input, "data_type_")
    })

    col_new_names <- reactive({
      names_list <- column_metadata(data, input, "new_name_ ")
      # colnames <- str_replace(names_list, " ", "_")
      colnames <- gsub(" ", "_", names_list)
    })

    data_final <- eventReactive(input$btn_transform_data, {
      modify_data_type(data, input, col_data_types, col_new_names)
    })

    observeEvent(input$btn_reset_data, {
      output$ui_transform <- renderUI({
        transform_data(ns, data)
      })


      toast(
        title = "",
        message = "Restoring column names and data types...",
        duration = 1500,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )
    })

    observeEvent(input$btn_transform_data, {
      save_modified_data(data_final())
      get_new_col_names(col_new_names())
      get_new_col_types(col_data_types())


      toast(
        title = "",
        message = "Applying changes to the data...",
        duration = 2000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )

      observeEvent(input$`next`, {
        updateTabItems(session = parent, "tabs", "tab_screen")
      })
      updateTabItems(session = parent, "tabs", "tab_screen")
    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_select")
    })

    return(data_final)

  })
}
