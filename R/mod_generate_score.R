#' Generate RFM score
#'
#' Shiny module for generating RFM score.
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param data_flag Reactive; transaction or customer level data.
#' @param data Reactive; sample or user submitted data.
#' @param type_flag Reactive; project type.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @importFrom rfm rfm_table_order rfm_table_customer
#' @importFrom rlang sym
#'
#' @noRd
#'
generate_score_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_generate_score",
          div(class = "tab_container btn_end",
              div(
                fluidRow(
                  column(12, uiOutput(ns('ui_generate_score')))
                )
              ),
              sidebar_highlight(ns, FALSE, "'back-tab'")
          )
  )
}

generate_score_server <- function(id, parent, data_flag, data, type_flag) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    output$ui_generate_score <- renderUI({
      tagList(
        if (type_flag() == "sample") {
          inputs <- names(data())
          switch(data_flag(),
                 "transaction" = sample_transaction_ui(ns, data, inputs),
                 "customer_days" = sample_customer_days_ui(ns, data, inputs),
                 "customer_date" = sample_customer_date_ui(ns, data, inputs)
          )
        } else if (type_flag() == "restore_project" || type_flag() == "clone_project") {
          inputs <- global$proj_info$score_inputs
          if (!is.null(inputs)) {
            switch(data_flag(),
                   "transaction" = restore_transaction_data_ui(ns, data, inputs),
                   "customer_days" = restore_customer_days_ui(ns, data, inputs),
                   "customer_date" = restore_customer_date_ui(ns, data, inputs)
            )
          } else {
            switch(data_flag(),
                   "transaction" = transaction_data_ui(ns, data),
                   "customer_days" = customer_days_ui(ns, data),
                   "customer_date" = customer_date_ui(ns, data)
            )
          }
        } else {

          switch(
            data_flag(),
            "transaction" = trans_data_ui(ns, data),
            "customer_days" = cust_days_ui(ns, data), 
            "customer_date" = cust_date_ui(ns, data) 
          )
        }
      )
    })

    data_score <-
      eventReactive(
        input$btn_generate_score, {
          score <-
            switch(
              data_flag(),
              "transaction" = rfm_table_order(data(),
                                              !!sym(input$customer_id),
                                              !!sym(input$order_date),
                                              !!sym(input$revenue),
                                              input$analysis_date,
                                              input$bins,
                                              input$bins,
                                              input$bins),
              "customer_days" = rfm_table_customer(data(),
                                                   !!sym(input$customer_id),
                                                   !!sym(input$n_transactions),
                                                   !!sym(input$recency_days),
                                                   !!sym(input$revenue),
                                                   input$analysis_date,
                                                   input$bins,
                                                   input$bins,
                                                   input$bins),
              "customer_date" = rfm_table_customer(data(),
                                                   !!sym(input$customer_id),
                                                   !!sym(input$n_transactions),
                                                   !!sym(input$latest_visit_date),
                                                   !!sym(input$revenue),
                                                   input$analysis_date,
                                                   input$bins,
                                                   input$bins,
                                                   input$bins)

            )

          score
        })

    score_inputs <- reactive({
      switch(data_flag(),
             "transaction" = c(input$customer_id, input$order_date,
                               input$revenue, input$analysis_date, input$bins),
             "customer_days" = c(input$customer_id, input$n_transactions,
                                 input$recency_days, input$revenue,
                                 input$analysis_date, input$bins),

             "customer_date" = c(input$customer_id, input$n_transactions,
                                 input$latest_visit_date, input$revenue,
                                 as.Date(input$analysis_date), input$bins)
      )
    })

    observeEvent(input$btn_generate_score, {
      save_rfm_score(data_score()$rfm)
      get_score_inputs(score_inputs())

      toast(
        title = "",
        message = "Generating RFM score...",
        duration = 2000,
        background_color = "#0f1a34",
        progress_bar_color = "white",
        message_color = "white",
        position = "bottomCenter"
      )

      updateTabItems(session = parent, "tabs", "tab_rfm_score")
    })

    observeEvent(input$back, {
      updateTabItems(session = parent, "tabs", "tab_config")
    })

    observeEvent(input$`next`, {
      updateTabItems(session = parent, "tabs", "tab_rfm_score")
    })

    return(
      list(
        score = data_score,
        btn = reactive({ input$btn_generate_score }),
        bins = reactive({ input$bins })
      )
    )
  })
}
