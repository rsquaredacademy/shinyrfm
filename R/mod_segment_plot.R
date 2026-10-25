#' Segment plot
#'
#' Shiny module for generating segment plot.
#' 
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param data Reactive; sample or user submitted data.
#' @param btn Reactive; rfm score generation button.
#' @param engine Reactive; plotting engine.
#' @param file Reactive; download file type.
#' @param flag Reactive; project type.
#' @param input, output, session Internal parameters for {shiny}.
#'
#' @importFrom rfm rfm_plot_segment
#' @importFrom treemapify geom_treemap
#' @noRd
#'
segment_plot_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_segment_plot",
          div(class = "tab_container btn_end",
              div(
                fluidRow(
                  plot_buttons(ns, 'Segment Plot'),
                  plot_download_options(ns),
                  column(12, align = "center", hr())
                ),
                div(class = "plot-order-dist",
                    div(class = "plot-settings",
                        div(class = "plot-details",
                            plot_minimize(ns),
                            plot_segment_metric(ns),
                            plot_flip(ns, FALSE)
                        ),
                        plot_modify_ui(ns)
                    ),
                    div(class = "plot",
                        uiOutput(ns("plot_output"))
                    )
                )
              ),
              nav_btns(ns)
          )
  )
}

segment_plot_server <- function(id, parent, data, btn, btn_next, engine, file, flag) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    observeEvent(btn(), {
      updateCheckboxInput(session, "interactive", "Interactive",
                          as.logical(engine()))

      updateRadioButtons(session, "download_type", "",
                         c("PNG" = "png",
                           "JPEG" = "jpeg"), file(), inline = TRUE)
    })

    output$plot_output <- renderUI({
      if (input$interactive) {
        threeDots(plotlyOutput(ns("plotly_segment")), color = "#0f1a34")
      } else {
        threeDots(plotOutput(ns("plot_segment")), color = "#0f1a34")
      }
    })

    segment_plot <- reactiveVal()

    observeEvent(btn_next(), {
        segment_plot(rfm_plot_segment(data(), input$metric, input$interactive))

        if (input$interactive) {
          output$plotly_segment <- renderPlotly({
              # segment_plot() %>%
                config(segment_plot(),
                  displayModeBar = TRUE,
                  modeBarButtonsToRemove = c("zoom2d", "zoomIn2d",
                                             "zoomOut2d", "pan2d",
                                             "lasso2d", "autoScale2d",
                                             "select2d", "resetScale2d"))
          })
        } else {
          output$plot_segment <- renderPlot({ segment_plot() })
        }
    })

    observeEvent(input$btn_resize, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        restore_flag <- global$plot_flag$segment_plot
        if (!restore_flag) {
          inputs <- global$proj_info$segment_plot
          if (!is.null(inputs)) {
            segment_plot(rfm_plot_segment(data(), inputs[1], as.logical(inputs[2])))

            updateSelectInput(
              session,
              "metric",
              "Metric",
              c("Customers" = "customers",
                "Orders" = "orders",
                "Revenue" = "revenue"),
              inputs[1])

            updateCheckboxInput(session, "interactive", "Interactive",
                                as.logical(inputs[2]))
            output$plot_segment <- renderPlot({ segment_plot() })
            restore_segment_plot()
          } else {
            segment_plot(rfm_plot_segment(data()))
            output$plot_segment <- renderPlot({ segment_plot() })
          }
        } else {
          segment_plot(rfm_plot_segment(data()))
          output$plot_segment <- renderPlot({ segment_plot() })
        }
      } else {
        segment_plot(rfm_plot_segment(data(), input$metric, input$interactive))

        if (input$interactive) {
          output$plotly_segment <- renderPlotly({
              # segment_plot() %>%
                config(segment_plot(),
                  displayModeBar = TRUE,
                  modeBarButtonsToRemove = c("zoom2d", "zoomIn2d",
                                             "zoomOut2d", "pan2d",
                                             "lasso2d", "autoScale2d",
                                             "select2d", "resetScale2d"))
          })
        } else {
          output$plot_segment <- renderPlot({ segment_plot() })
        }

        get_segment_plot_opts(c(input$metric, input$interactive))
      }

    })

    observeEvent(input$btn_reset, {
      updateSelectInput(
        session,
        "metric",
        "Metric",
        c("Customers" = "customers",
          "Orders" = "orders",
          "Revenue" = "revenue"),
        "customers")

      updateCheckboxInput(session, "interactive", "Interactive", FALSE)

      segment_plot(rfm_plot_segment(data()))

      output$plot_segment <- renderPlot({ segment_plot() })

      get_segment_plot_opts(c(input$metric, input$interactive))


    })

    plot_download(input, output, segment_plot, "rfm-plot-segment")

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_segment_summary")
    })

    observeEvent(input$`next`, {
      updateTabItems(session = parent, "tabs", "tab_segment_summary_plot")
    })

    return(reactive({ input$`next` }))

  })
}
