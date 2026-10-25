#' Upload data 
#'
#' Shiny module for loading data. 
#'
#' @param id Shiny module id.
#' @param parent Name of the parent session.
#' @param flag Reactive; project type flag.
#' @param btn Reactive; retrieve and display projects.
#' @param input, output, session Internal parameters for {shiny}
#'
#' @importFrom utils read.csv 
#' @importFrom readxl read_excel
#' @noRd
#'
upload_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "tab_upload",
          div(class = "tab_container btn_end",
              div(
                fluidRow(
                  column(12, uiOutput(ns('ui_upload')))
                )
              ),
              div(class = "nav-buttons",
                  fluidRow(
                    column(6, align = 'left',
                           uiOutput(ns('nav_btns'))
                    ),
                    column(6, align = 'right',
                           actionButton(inputId = ns('next'), label = "Next",
                                        icon = icon("long-arrow-right"),
                                        class = 'btn-next btn-next-delay')
                    )
                  )

              )
          )
  )
}

upload_server <- function(id, parent, flag, btn) {
  moduleServer(id, function(input, output, session) {

    ns <- session$ns

    output$ui_upload <- renderUI({
      switch(flag(),
             "sample" = ui_sample_file(ns),
             "analyze" = ui_upload_file(ns, input),
             "new_project" = ui_upload_file(ns, input),
             "restore_project" = ui_list_projects(ns),
             "clone_project" = ui_clone_project(ns)
      )
    })

    output$nav_btns <- renderUI({
      if (flag() == "sample" || flag() == "analyze") {
        actionButton(inputId = ns('back'), label = "Back",
                     icon = icon("long-arrow-left"),
                     class = 'btn-back',
                     onclick = "App.highlightTab(this, 'upload-home')")
      } else if (flag() == "restore_project" || flag() == "clone_project") {
        actionButton(inputId = ns('back'), label = "Back",
                     icon = icon("long-arrow-left"),
                     class = 'btn-back',
                     onclick = "App.highlightTab(this, 'upload-list')")
      } else {
        actionButton(inputId = ns('back'), label = "Back",
                     icon = icon("long-arrow-left"),
                     class = 'btn-back',
                     onclick = "App.highlightTab(this, 'back-tab')")
      }

    })

    output$ui_file <- renderUI({
      if (input$upload_options == "csv") {
        upload_csv(ns)
      } else if (input$upload_options == "excel") {
        upload_excel(ns)
      }
    })

    list_of_projects <- eventReactive(btn(), {
      get_project_list(global$meta_info$path)$Project 
        # pull(Project)
    })

    observeEvent(btn(), {
      output$list_projects <- renderUI({
        div(
          selectInput(ns("select_project"), label = "Select Project",
                      choices = list_of_projects()),
          column(12, align = "center",
                 actionButton(ns("btn_restore_project"),
                              label = "Open Project",
                              onclick = "App.plotOptions(this, 'display')"))
        )
      })
    })

    observeEvent(btn(), {
      output$clone_project <- renderUI({
        fluidRow(
          div(class = "clone-project-select",
              selectInput(ns("select_project"), label = "Select Project",
                          choices = list_of_projects())
          ),
          textInput(ns("cloned_project"), label = "New Project Name",
                    value = NULL),
          column(12, align = "center",
                 actionButton(ns("btn_restore_project"),
                              label = "Clone Project",
                              class = "btn-clone-project",
                              onclick = "App.plotOptions(this, 'display')"))
        )
      })
    })

    inFile <- reactive({
      if(is.null(input$data_file)) {
        return(NULL)
      } else {
        input$data_file
      }
    })

    data <- eventReactive(input$btn_restore_project, {
      proj_meta <- global$meta_info
      if (flag() == "sample") {
        switch(input$sample_type,
               "transaction" = transaction_data,
               "customer_days" = customer_data,
               "customer_date" = customer_data)
      } else if (flag() == "analyze" || flag() == "new_project") {
        if(is.null(inFile())) {
          return(NULL)
        } else {
          if (input$upload_options == "csv") {
            read.csv(inFile()$datapath,
                     header = input$header,
                     sep    = input$sep,
                     quote  = input$quote)
          } else {
            ext <- tools::file_ext(inFile()$name)

            file.rename(inFile()$datapath,
                        paste(inFile()$datapath, ext, sep="."))

            read_excel(
              path = paste(inFile()$datapath, ext, sep="."),
              sheet = input$sheet_n
            )
          }
        }
      } else if (flag() == "clone_project") {
        data_path <- paste0(proj_meta$path, "/", proj_meta$global_dir, "/",
                            input$cloned_project, "/data")
        if (file.exists(data_path)) {
          readRDS(data_path)
        } else {
          return(NULL)
        }
      } else {
        data_path <- paste0(proj_meta$path, "/", proj_meta$global_dir, "/",
                            input$select_project, "/data")
        if (file.exists(data_path)) {
          readRDS(data_path)
        } else {
          return(NULL)
        }
      }
    })

    observeEvent(input$btn_restore_project, {
      proj_meta <- global$meta_info
      if (flag() == "new_project") {
        if (!is.null(data())) {
          save_raw_data(data())
        }
      } else if (flag() == "clone_project") {

        # check if a project of the same name already exists
        proj_path <- paste0(proj_meta$path, "/",
                            proj_meta$global_dir, "/",
                            input$cloned_project)

        is_duplicate <- dir.exists(proj_path)

        if (is_duplicate) {

          toast(
            title = "",
            message = paste0("Project `", input$cloned_project, "` already exists. Please choose a different name!"),
            duration = 2000,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )


          updateTextInput(session, "cloned_project", value = "")
        } else {

          toast(
            title = "",
            message = paste0("Cloning project `", input$select_project, "`..."),
            duration = 1800,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )

          # create directory
          dir.create(paste0(proj_meta$path, "/",
                     proj_meta$global_dir, "/",
                     input$cloned_project))

          # copy rds file
          file.copy(paste0(proj_meta$path, "/",
                             proj_meta$global_dir, "/",
                             input$select_project, "/_",
                             input$select_project, ".rds"), paste0(proj_meta$path, "/",           
                                                                     proj_meta$global_dir, "/",
                                                                     input$cloned_project))


          # copy data file
          file.copy(paste0(proj_meta$path, "/",
                             proj_meta$global_dir, "/",
                             input$select_project, "/data"), paste0(proj_meta$path, "/",           
                                                                    proj_meta$global_dir, "/",
                                                                    input$cloned_project))

          toast(
            title = "",
            message = paste0("Copying metadata into `", input$select_project, "`..."),
            duration = 1800,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )

          if (!is.null(data())) {
            save_raw_data(data()$raw_data)
            save_selected_data(data()$selected_data)
            save_modified_data(data()$modified_data)
            save_rfm_score(data()$rfm_score)
            save_rfm_segments(data()$rfm_segments)
            save_segment_summary(data()$segment_summary)
          }


          toast(
            title = "",
            message = paste0("Copying data sets into `", input$select_project, "`..."),
            duration = 1800,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )

          proj_config <- readRDS(paste0(proj_meta$path, "/",
                                          proj_meta$global_dir, "/",
                                          input$cloned_project, "/_",
                                          input$select_project, ".rds"))
          
          # proj_config <- read_yaml(paste0(proj_meta$path, "/",
          #                                 proj_meta$global_dir, "/",
          #                                 input$cloned_project, "/_",
          #                                 input$select_project, ".yml"))

          set_project_title(input$cloned_project)

          file.rename(paste0(proj_meta$path, "/",
                             proj_meta$global_dir, "/",
                             input$cloned_project, "/_",
                             input$select_project, ".rds"), paste0(proj_meta$path, "/",           
                                                                     proj_meta$global_dir, "/",
                                                                     input$cloned_project, "/_",
                                                                     input$cloned_project, ".rds"))

          toast(                                                     
            title = "",
            message = paste0("Cleaning up project `", input$cloned_project, "` folder..."),
            duration = 1800,
            background_color = "#0f1a34",
            progress_bar_color = "white",
            message_color = "white",
            position = "bottomCenter"
          )

          get_columns_selected(proj_config$cols_selected)
          get_new_col_names(proj_config$col_new_names)
          get_new_col_types(proj_config$col_new_types)
          get_data_format(proj_config$data_format)
          get_currency(proj_config$currency)
          get_plot_color(proj_config$plot_color)
          get_plot_ext(proj_config$plot_ext)
          get_plot_mode(proj_config$plot_mode)
          get_score_inputs(proj_config$score_inputs)
          get_segments_count(proj_config$segments_count)
          get_segment_names_meta(proj_config$segment_names)
          get_lower_recency(proj_config$lower_recency)
          get_lower_frequency(proj_config$lower_frequency)
          get_lower_monetary(proj_config$lower_monetary)
          get_upper_recency(proj_config$upper_recency)
          get_upper_frequency(proj_config$upper_frequency)
          get_upper_monetary(proj_config$upper_monetary)
          get_order_dist_opts(proj_config$order_dist)
          get_hist_opts(proj_config$histogram)
          get_heatmap_opts(proj_config$heatmap)
          get_barchart_opts(proj_config$bar_chart)
          get_segment_plot_opts(proj_config$segment_plot)
          get_summary_plot_opts(proj_config$summary_plot)
          get_revenue_plot_opts(proj_config$revenue_plot)
          get_scatter_plot_opts(proj_config$scatter_plot)
          get_med_recency_opts(proj_config$median_recency)
          get_med_frequency_opts(proj_config$median_frequency)
          get_med_monetary_opts(proj_config$median_monetary)


          updateTabItems(session = parent, "tabs", "tab_examine")
        }
      }  else if (flag() == "restore_project") {

        if (!is.null(data())) {
          save_raw_data(data()$raw_data)
          save_selected_data(data()$selected_data)
          save_modified_data(data()$modified_data)
          save_rfm_score(data()$rfm_score)
          save_rfm_segments(data()$rfm_segments)
          save_segment_summary(data()$segment_summary)
        }

        proj_config <- readRDS(paste0(proj_meta$path, "/",
                                        proj_meta$global_dir, "/",
                                        input$select_project, "/_",
                                        input$select_project, ".rds"))
        
        # proj_config <- read_yaml(paste0(proj_meta$path, "/",
        #                                 proj_meta$global_dir, "/",
        #                                 input$select_project, "/_",
        #                                 input$select_project, ".yml"))

        set_project_title(proj_config$title)

        toast(
          title = "",
          message = paste0("Launching project `", input$select_project, "`..."),
          duration = 2000,
          background_color = "#0f1a34",
          progress_bar_color = "white",
          message_color = "white",
          position = "bottomCenter"
        )

        get_columns_selected(proj_config$cols_selected)
        get_new_col_names(proj_config$col_new_names)
        get_new_col_types(proj_config$col_new_types)
        get_data_format(proj_config$data_format)
        get_currency(proj_config$currency)
        get_plot_color(proj_config$plot_color)
        get_plot_ext(proj_config$plot_ext)
        get_plot_mode(proj_config$plot_mode)
        get_score_inputs(proj_config$score_inputs)
        get_segments_count(proj_config$segments_count)
        get_segment_names_meta(proj_config$segment_names)
        get_lower_recency(proj_config$lower_recency)
        get_lower_frequency(proj_config$lower_frequency)
        get_lower_monetary(proj_config$lower_monetary)
        get_upper_recency(proj_config$upper_recency)
        get_upper_frequency(proj_config$upper_frequency)
        get_upper_monetary(proj_config$upper_monetary)
        get_order_dist_opts(proj_config$order_dist)
        get_hist_opts(proj_config$histogram)
        get_heatmap_opts(proj_config$heatmap)
        get_barchart_opts(proj_config$bar_chart)
        get_segment_plot_opts(proj_config$segment_plot)
        get_summary_plot_opts(proj_config$summary_plot)
        get_revenue_plot_opts(proj_config$revenue_plot)
        get_scatter_plot_opts(proj_config$scatter_plot)
        get_med_recency_opts(proj_config$median_recency)
        get_med_frequency_opts(proj_config$median_frequency)
        get_med_monetary_opts(proj_config$median_monetary)

      }

    })

    observeEvent(input$btn_restore_project, {
      #if (flag() == "restore_project") {
      #  updateTabItems(session = parent, "tabs", "tab_examine")
      #} else if (flag() != "clone_project") {
      #  updateTabItems(session = parent, "tabs", "tab_raw")
      #}
      updateTabItems(session = parent, "tabs", "tab_raw")
    })

    observeEvent(input$back, {
      if (flag() == "sample" || flag() == "analyze") {
        updateTabItems(session = parent, "tabs", "tab_home")
      } else if (flag() == "restore_project" || flag() == "clone_project") {
        updateTabItems(session = parent, "tabs", "tab_projects")
      } else {
        updateTabItems(session = parent, "tabs", "tab_add_project")
      }

    })

    observeEvent(input$`next`, {
      if (flag() == "restore_project" || flag() == "clone_project") {
        updateTabItems(session = parent, "tabs", "tab_project_info")
      } else {
        updateTabItems(session = parent, "tabs", "tab_raw")
      }
    })


    return(
      list(
        data   = data,
        btn    = reactive({ input$btn_restore_project }),
        sample = reactive({ input$sample_type })
      )
    )
  })
}
