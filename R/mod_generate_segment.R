#' RFM segments
#' 
#' Shiny module for generating RFM segments.
#' 
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param data Reactive; transaction or customer level data.
#' @param flag Reactive; project type.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @importFrom rfm rfm_segment
#' @noRd
#'
generate_segment_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_generate_segments",
          div(class = "tab_container btn_end",
              div(
                fluidRow(
                  tab_title("Generate Segments"),
                  column(12, align = "center",
                         radioButtons(
                           ns("add_segments"), "",
                           c("Pre-defined" = "predefined",
                             "Custom" = "custom"),
                           inline = TRUE)
                  )
                ),

                fluidRow(
                  column(12, uiOutput(ns('ui_segment')))
                )
              ),
              sidebar_highlight(ns, FALSE, "'back-tab'")
          )
  )
}

generate_segment_server <- function(id, parent, data, flag) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    output$ui_segment <- renderUI({
      tagList(
        if (flag() == "restore_project" || flag() == "clone_project") {
          if (!is.null(global$proj_info$segment_names)) {
            restore_segment_input(ns, global$proj_info)
          } else {
            if (input$add_segments == "predefined") {
              segment_input(ns)
            } else if (input$add_segments == "custom") {
              add_new_segment(ns)
            }
          }
        } else {
          if (input$add_segments == "predefined") {
            segment_input(ns)
          } else if (input$add_segments == "custom") {
            add_new_segment(ns)
          }
        }
      )
    })

    n_segments <- reactiveVal(1)

    observeEvent(input$add_new_segment, {
      n_segments(n_segments() + 1)
      insertUI(
        selector = ".segment_line",
        where = "beforeEnd",
        ui = new_segment(ns, n_segments())
      )

      toast(
        title = "",
        message = "New segment added successfully...",
        duration = 2000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )
    })

    observeEvent(input$restore_segment, {
      output$ui_segment <- renderUI({
        if (flag() == "restore_project" || flag() == "clone_project") {
          restore_segment_input(ns, global$proj_info)
        } else {
          if (input$add_segments == "predefined") {
            segment_input(ns)
          } else if (input$add_segments == "custom") {
            add_new_segment(ns)
          }
        }
      })

      toast(
        title = "",
        message = "Restoring default segments...",
        duration = 2000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )
    })

    name_segments <- reactive({
      get_segment_names(input, n_segments(), input$add_segments)
    })

    lower_recency <- reactive({
      segment_intervals(input, n_segments(), "recency_interval_",
                                      1, input$add_segments)
    })

    upper_recency <- reactive({
      segment_intervals(input, n_segments(), "recency_interval_",
                                      2, input$add_segments)
    })

    lower_frequency <- reactive({
      segment_intervals(input, n_segments(),
                                      "frequency_interval_", 1,
                                      input$add_segments)
    })

    upper_frequency <- reactive({
      segment_intervals(input, n_segments(),
                                      "frequency_interval_", 2,
                                      input$add_segments)
    })

    lower_monetary <- reactive({
      segment_intervals(input, n_segments(),
                                      "monetary_interval_", 1,
                                      input$add_segments)
    })

    upper_monetary <- reactive({
      segment_intervals(input, n_segments(),
                                      "monetary_interval_", 2,
                                      input$add_segments)
    })

    segments <- eventReactive(input$btn_create_segments, {
      rfm_segment(data(), name_segments(), lower_recency(), upper_recency(),
                  lower_frequency(), upper_frequency(), lower_monetary(),
                  upper_monetary())
    })

    observeEvent(input$btn_create_segments, {
      save_rfm_segments(segments())
      get_segments_count(length(name_segments()))
      get_segment_names_meta(name_segments())
      get_lower_recency(lower_recency())
      get_lower_frequency(lower_frequency())
      get_lower_monetary(lower_monetary())
      get_upper_recency(upper_recency())
      get_upper_frequency(upper_frequency())
      get_upper_monetary(upper_monetary())

      toast(
        title = "",
        message = "Generating customer segments...",
        duration = 3000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )


      updateTabItems(session = parent, "tabs", "tab_segments")
    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_bar_chart")
    })

    observeEvent(input$`next`, {
      updateTabItems(session = parent, "tabs", "tab_segments")
    })

    return(
      list(
        segments = segments,
        btn = reactive({ input$btn_create_segments })
      )
    )
  })
}
