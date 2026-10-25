#' Select columns 
#'
#' Shiny module for column selection.
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param flag Reactive; project type flag.
#' @param data Reactive; sample or user uploaded data. 
#' @param btn Reactive; retrieve column names.
#' @param sample Reactive; sample data type.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @noRd
select_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_select",
          div(class = "tab_container btn_end",
              div(
                tab_title('Select Columns'),
                fluidRow(
                  actionButton(
                    inputId = ns("btn_select_all"), label = "Select All",
                    width = '150px', class = "btn-select"),
                  actionButton(
                    inputId = ns("btn_clear_all"), label = "Clear",
                    width = '150px', class = "btn-clear")
                ),
                fluidRow(
                  column(12, align = 'right',
                         checkboxGroupInput(
                           inputId = ns('select_columns'),
                           label = '',
                           choices = NULL,
                           selected = NULL,
                           inline = TRUE
                         )
                  )
                ),
                div(class = "tab-buttons",
                    fluidRow(
                      column(8),
                      column(4,
                             align = 'left',
                             actionButton(
                               inputId = ns("btn_select_columns"),
                               label = "Select Columns",
                               width = '150px',
                               icon = icon('check'),
                               class = 'btn-select-columns',
                               onclick = "App.plotOptions(this, 'display')")
                      )
                    )
                )
              ),
              btn_delay(ns)
          )
  )
}

select_server <- function(id, parent, data, flag, btn, sample) {
  moduleServer(id, function(input, output, session) {

    observeEvent(btn(), {
      if (flag() == "sample") {
        if (sample() == "transaction") {
          update_checkbox(session, names(data()), TRUE)
        } else if (sample() == "customer_days") {
          update_checkbox(session, names(data()), TRUE)
        } else if (sample() == "customer_date") {
          update_checkbox(session, names(data()), TRUE)
        }
      } else if (flag() == "restore_project" || flag() == "clone_project") {
        if (!is.null(global$proj_info$cols_selected)) {
          update_checkbox(session, global$proj_info$cols_selected, FALSE)
        } else {
          update_checkbox(session, names(data()$raw_data), FALSE)
        }
      } else {
        update_checkbox(session, names(data()), FALSE)
      }
    })

    observeEvent(input$btn_select_all, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        if (!is.null(global$proj_info$cols_selected)) {
          update_checkbox(session, global$proj_info$cols_selected, FALSE)
          n_cols <- length(global$proj_info$cols_selected)
        } else {
          update_checkbox(session, names(data()$raw_data), FALSE)
          n_cols <- ncol(data()$raw_data)
        }
      } else {
        update_checkbox(session, names(data()), FALSE)
        n_cols <- ncol(data())
      }
    })

    observeEvent(input$btn_clear_all, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        if (!is.null(global$proj_info$cols_selected)) {
          update_checkbox(session, global$proj_info$cols_selected, TRUE)
        } else {
          update_checkbox(session, names(data()$raw_data), TRUE)
        }
      } else {
        update_checkbox(session, names(data()), TRUE)
      }

    })

    data_selected <- eventReactive(input$btn_select_columns, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        data()$raw_data[, input$select_columns, drop = FALSE]
      } else {
        data()[, input$select_columns, drop = FALSE]
      }
    })

    observeEvent(input$btn_select_columns, {
      if (ncol(data_selected()) > 0) {
        get_columns_selected(names(data_selected()))
        save_selected_data(data_selected())

        toast(
          title = "",
          message = paste(ncol(data_selected()), "columns selected!"),
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )

        observeEvent(input$`next`, {
          updateTabItems(session = parent, "tabs", "tab_transform")
        })
        updateTabItems(session = parent, "tabs", "tab_transform")
      } else {

        toast(
          title = "",
          message = "No columns selected! Please select columns required for RFM analysis.",
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )
      }
    })

    observeEvent(input$back, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        updateTabItems(session = parent, "tabs", "tab_dashboard")
      } else {
        updateTabItems(session = parent, "tabs", "tab_raw")
      }
    })

    return(list(data = data_selected))
  })
}
