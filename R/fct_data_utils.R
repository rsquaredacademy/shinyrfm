#' Transform data
#'
#' UI for data transformation.
#'
#' @param ns Namespace of the shiny module.
#' @param data Transaction or customer level data.
#' @noRd
#'
transform_data <- function(ns, data) {
  ncol <- as.integer(ncol(data()))

  tagList(
    fluidRow(
      column(6, align = "left", h3("Data Transformation")),
      column(6, align = "right",
             a("", target = "_blank", href = "https://rfm.rsquaredacademy.com",
               icon("circle-question", "fa-2x"))
      ),
      column(12, align = "left",
             p("Rename columns and modify data type")
      )
    ),
    hr(),
    fluidRow(
      column(3, align = 'center', h4('Old Name')),
      column(3, align = 'center', h4('New Name')),
      column(3, align = 'center', h4('Data Type'))
    ),
    hr(),
    fluidRow(
      lapply(1:ncol, function(i) {
        fluidRow(
          column(3, align = 'center',
                 textInput(ns(paste("n_col_", i)), label = '', width = '150px',
                           value = names(data())[i])
          ),
          column(3, align = 'center',
                 textInput(ns(paste("new_name_", i)),
                           label = '',  width = '150px',
                           value = names(data())[i])
          ),
          column(3, align = 'center',
                 selectInput(ns(paste0("data_type_", i)),
                             label = '',  width = '150px',
                             choices = c('numeric', 'factor', 'Date', 'character', 'integer'),
                             selected = class(data()[[i]]))
          ),
          column(3, align = 'center',
                 conditionalPanel(
                   condition = paste(paste0("input.data_type_", i), "== 'Date'"),
                   ns = ns,
                   column(4, br(), h5('Format')),
                   column(8,
                          selectInput(
                            ns(paste0("date_type_", i)),
                            label = '',  width = '150px',
                            choices = c('yy.mm.dd' = '%y.%m.%d',
                                        'yy-mm-dd' = '%y-%m-%d',
                                        'yy/mm/dd' = '%y/%m/%d',
                                        'yyyy.mm.dd' = '%Y.%m.%d',
                                        'yyyy-mm-dd' = '%Y-%m-%d',
                                        'yyyy/mm/dd' = '%Y/%m/%d',
                                        'mm.dd.yy' = '%m.%d.%y',
                                        'mm-dd-yy' = '%m-%d-%y',
                                        'mm/dd/yy' = '%m/%d/%y',
                                        'mm.dd.yyyy' = '%m.%d.%Y',
                                        'mm-dd-yyyy' = '%m-%d-%Y',
                                        'mm/dd/yyyy' = '%m/%d/%Y',
                                        'dd.mm.yy' = '%d.%m.%y',
                                        'dd-mm-yy' = '%d-%m-%y',
                                        'dd/mm/yy' = '%d/%m/%y',
                                        'dd.mm.yyyy' = '%d.%m.%Y',
                                        'dd-mm-yyyy' = '%d-%m-%Y',
                                        'dd/mm/yyyy' = '%d/%m/%Y',
                                        'yyyy.dd.mm' = '%y.%d.%m',
                                        'yy-dd-mm' = '%y-%d-%m',
                                        'yy/dd/mm' = '%y/%d/%m',
                                        'yyyy.dd.mm' = '%Y.%d.%m',
                                        'yyyy-dd-mm' = '%Y-%d-%m',
                                        'yyyy/dd/mm' = '%Y/%d/%m',
                                        'mm.yy.dd' = '%m.%y.%d',
                                        'mm-yy-dd' = '%m-%y-%d',
                                        'mm/yy/dd' = '%m/%y/%d',
                                        'mm.yyyy.dd' = '%m.%Y.%d',
                                        'mm-yyyy-dd' = '%m-%Y-%d',
                                        'mm/yyyy/dd' = '%m/%Y/%d',
                                        'dd.yy.mm' = '%d.%y.%m',
                                        'dd-yy-mm' = '%d-%y-%m',
                                        'dd/yy/mm' = '%d/%y/%m',
                                        'dd.yyyy.mm' = '%d.%Y.%m',
                                        'dd-yyyy-mm' = '%d-%Y-%m',
                                        'dd/yyyy/mm' = '%d/%Y/%m'),
                            selected = '%Y-%m-%d')
                   )
                 )
          )
        )

      }),
      hr(),
      div(class = "tab-buttons",
          fluidRow(
            column(3),
            column(3, align = 'center',
                   actionButton(inputId = ns("btn_reset_data"),
                                label = "Reset", width = "140px",
                                icon  = icon('undo'))
            ),
            column(3, align = 'center',
                   actionButton(inputId = ns("btn_transform_data"),
                                label = "Apply Changes", width = "140px",
                                icon  = icon('thumbs-up'),
                                class = 'btn-transform',
                                onclick = "App.plotOptions(this, 'display')")
            ),
            column(3)
          )
      )
    )
  )
}

#' Retrieve transform config
#' 
#' Retrieve transform inputs from YAML file.
#' 
#' @param ns Namespace.
#' @param data User saved data.
#' @param cols_selected Columns selected.
#' @param new_names New names of columns.
#' @param new_types Data type of columns.
#'
#' @noRd
#'
restore_transform_inputs <- function(ns, data, cols_selected, new_names, new_types) {
  ncol <- as.integer(ncol(data()))

  tagList(
    fluidRow(
      column(6, align = "left", h3("Data Transformation")),
      column(6, align = "right",
             a("", target = "_blank", href = "https://rfm.rsquaredacademy.com",
               icon("circle-question", "fa-2x"))
      ),
      column(12, align = "left",
             p("Rename columns and modify data type")
      )
    ),
    hr(),
    fluidRow(
      column(3, align = 'center', h4('Old Name')),
      column(3, align = 'center', h4('New Name')),
      column(3, align = 'center', h4('Data Type'))
    ),
    hr(),
    fluidRow(
      lapply(1:ncol, function(i) {
        fluidRow(
          column(3,
                 textInput(ns(paste("n_col_", i)), label = '', width = '150px',
                           value = cols_selected[i])
          ),
          column(3,
                 textInput(ns(paste("new_name_", i)),
                           label = '',  width = '150px',
                           value = new_names[i])
          ),
          column(3,
                 selectInput(ns(paste0("data_type_", i)),
                             label = '',  width = '150px',
                             choices = c('numeric', 'factor', 'Date', 'character', 'integer'),
                             selected = new_types[[i]])
          ),
          column(3,
                 conditionalPanel(
                   condition = paste(paste0("input.data_type_", i), "== 'Date'"),
                   ns = ns,
                   column(4, br(), h5('Format')),
                   column(8,
                          selectInput(ns(paste0("date_type_", i)),
                                      label = '',  width = '150px',
                                      choices = c('yy.mm.dd' = '%y.%m.%d',
                                                  'yy-mm-dd' = '%y-%m-%d',
                                                  'yy/mm/dd' = '%y/%m/%d',
                                                  'yyyy.mm.dd' = '%Y.%m.%d',
                                                  'yyyy-mm-dd' = '%Y-%m-%d',
                                                  'yyyy/mm/dd' = '%Y/%m/%d',
                                                  'mm.dd.yy' = '%m.%d.%y',
                                                  'mm-dd-yy' = '%m-%d-%y',
                                                  'mm/dd/yy' = '%m/%d/%y',
                                                  'mm.dd.yyyy' = '%m.%d.%Y',
                                                  'mm-dd-yyyy' = '%m-%d-%Y',
                                                  'mm/dd/yyyy' = '%m/%d/%Y',
                                                  'dd.mm.yy' = '%d.%m.%y',
                                                  'dd-mm-yy' = '%d-%m-%y',
                                                  'dd/mm/yy' = '%d/%m/%y',
                                                  'dd.mm.yyyy' = '%d.%m.%Y',
                                                  'dd-mm-yyyy' = '%d-%m-%Y',
                                                  'dd/mm/yyyy' = '%d/%m/%Y',
                                                  'yyyy.dd.mm' = '%y.%d.%m',
                                                  'yy-dd-mm' = '%y-%d-%m',
                                                  'yy/dd/mm' = '%y/%d/%m',
                                                  'yyyy.dd.mm' = '%Y.%d.%m',
                                                  'yyyy-dd-mm' = '%Y-%d-%m',
                                                  'yyyy/dd/mm' = '%Y/%d/%m',
                                                  'mm.yy.dd' = '%m.%y.%d',
                                                  'mm-yy-dd' = '%m-%y-%d',
                                                  'mm/yy/dd' = '%m/%y/%d',
                                                  'mm.yyyy.dd' = '%m.%Y.%d',
                                                  'mm-yyyy-dd' = '%m-%Y-%d',
                                                  'mm/yyyy/dd' = '%m/%Y/%d',
                                                  'dd.yy.mm' = '%d.%y.%m',
                                                  'dd-yy-mm' = '%d-%y-%m',
                                                  'dd/yy/mm' = '%d/%y/%m',
                                                  'dd.yyyy.mm' = '%d.%Y.%m',
                                                  'dd-yyyy-mm' = '%d-%Y-%m',
                                                  'dd/yyyy/mm' = '%d/%Y/%m'),
                                      selected = '%Y-%m-%d')
                   )
                 )
          )
        )

      }),
      hr(),
      div(class = "tab-buttons",
          fluidRow(
            column(3),
            column(3, align = 'center',
                   actionButton(inputId = ns("btn_reset_data"),
                                label = "Reset", width = "140px",
                                icon  = icon('undo'))
            ),
            column(3, align = 'center',
                   actionButton(inputId = ns("btn_transform_data"),
                                label = "Apply Changes", width = "140px",
                                icon  = icon('thumbs-up'),
                                class = 'btn-transform',
                                onclick = "App.plotOptions(this, 'display')")
            ),
            column(3)
          )
      )
    )
  )
}

column_metadata <- function(data, input, param) {
  ncol <- as.integer(ncol(data()))

  collect <- list(lapply(1:ncol, function(i) {
    input[[paste0(param, i)]]
  }))

  unlist(collect)
}

modify_data_type <- function(data, input, data_types, new_names) {
  out <- list()

  for (i in seq_len(length(data()))) {
    column <- data()[[i]]
    type <- data_types()[i]

    out[[i]] <- switch(
      type,
      numeric   = as.numeric(column),
      factor    = as.factor(column),
      Date      = as.Date(column, format = input[[paste0("date_type_", i)]]),
      character = as.character(column),
      integer   = as.integer(column),
      stop("Unsupported data type: ", type, call. = FALSE)
    )
  }

  names(out) <- new_names()
  data.frame(out, stringsAsFactors = FALSE)
}

update_checkbox <- function(session, col_names, clear = FALSE) {

  if (clear) {
    cols_selected <- c()
  } else {
    cols_selected <- col_names
  }

  updateCheckboxGroupInput(
    session,
    inputId = "select_columns",
    choices = col_names,
    selected = cols_selected,
    inline = TRUE
  )
}

upload_csv <- function(ns) {
  fluidRow(
    column(
      12,
      align = 'center',
      fileInput(
        ns('data_file'), 'Choose file:',
        accept = c('text/csv', '.csv',
                   'text/comma-separated-values,text/plain')
      )
    ),


    column(
      12,
      align = 'center',
      checkboxInput(ns('header'), 'Header', TRUE)),

    column(
      12,
      align = 'center',
      selectInput(
        ns('sep'),
        'Separator',
        choices =
          c('Comma' = ',', 'Semicolon' = ';', 'Tab' = '\t'),
        selected = ',')
    ),


    column(
      12,
      align = 'center',
      selectInput(
        ns('quote'),
        'Quote',
        choices =
          c('None' = '', 'Double Quote' = '"',
            'Single Quote' = "'"), selected = '')
    )
  )
}

upload_excel <- function(ns) {

  fluidRow(

    column(12, align = 'center',
           fileInput(
             inputId = ns('data_file'),
             label = 'Choose file:',
             accept = c('.xls', '.xlsx')
           )
    ),

    column(12, align = 'center',
           numericInput(
             inputId = ns('sheet_n'),
             label = 'Sheet',
             value = 1,
             min = 1,
             step = 1,
             width = '120px'
           )
    )
  )
}

# get_project_list <- function(path) {
#   dir_info(paste0(path, "/rfm-projects")) %>%
#     filter(type == "directory") %>%
#     mutate(project = path %>%
#              as.character() %>%
#              strsplit(split = "/") %>%
#              map_chr(last)) %>%
#     select(Project = project,
#            `Created` = birth_time,
#            `Last Modified` = modification_time)
# }

ui_sample_file <- function(ns) {
  tagList(
    fluidRow(
      tab_title('Sample Data'),
      div(class = "data-type-options",
          column(12, align = "center",
                 radioButtons(ns("sample_type"), "Select sample type",
                              c("Transaction Level Data" = "transaction",
                                "Customer Level Data (Days)" = "customer_days",
                                "Customer Level Data (Date)" = "customer_date"))
          )
      )
    ),
    br(),
    fluidRow(
      column(12, align = "center",
             actionButton(ns("btn_restore_project"),
                          label = "Submit",
                          onclick = "App.plotOptions(this, 'display')"))
    )

  )
}

ui_upload_file <- function(ns, input) {
  div(
    fluidRow(
      tab_title('Upload Data'),
      column(12, align = "center",
             radioButtons(
               ns("upload_options"), "",
               c("CSV" = "csv",
                 "Excel" = "excel"),
               inline = TRUE)
      )
    ),

    fluidRow(
      column(12, align = "center",
             uiOutput(ns("ui_file")))
    ),

    fluidRow(
      column(12, align = "center",
             actionButton(ns("btn_restore_project"),
                          label = "Submit",
                          onclick = "App.plotOptions(this, 'display')"))
    )
  )
}

ui_list_projects <- function(ns) {
  fluidRow(
    br(),
    column(12, align = "center", uiOutput(ns("list_projects")))
  )
}

ui_clone_project <- function(ns) {
  fluidRow(
    br(),
    column(12, align = "center", uiOutput(ns("clone_project")))
  )
}

get_project_list <- function(path) {
  path             <- paste0(path, "/rfm-projects")
  dirs             <- list.dirs(path)[-1]
  projects         <- dir(path)
  time_info        <- file.info(dirs)[, c(5, 4)]
  result           <- cbind(projects, time_info)
  col_names        <- c("Project", "Created", "Last Modified")
  names(result)    <- col_names
  rownames(result) <- NULL
  return(result)
}

to_title_case <- function(text) {
  text <- tolower(text)
  str_split <- strsplit(text, "")[[1]]
  paste0(
    toupper(
      str_split[1]
    ),
    paste0(
      str_split[-1],
      collapse = ""
    )
  )
}
