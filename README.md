# shinytrack

shinytrack is an interactive Shiny application for recency, frequency, and monetary value (RFM) analysis. The app guides users through uploading transaction or customer data, transforming variables, generating RFM scores, creating customer segments, exploring segment visualizations, and exporting results. Projects can be saved, restored, cloned, and deleted to manage analysis workflows.

## Installation

Install the release version from CRAN:

```r
install.packages("shinytrack")
```

Install the development version from GitHub:

```r
# install.packages("remotes")
remotes::install_github("aravindhebbali/shinytrack")
```

## Usage

Launch the application:

```r
library(shinytrack)
rfm_app()
```

## Project Folder

The app stores projects under `<path>/rfm-projects`. The "Lookup path" button reads the `RFM_PROJECT_PATH` environment variable, which can be configured in `~/.Renviron` (for example, using `usethis::edit_r_environ()`).

## Built On

shinytrack is built on the [rfm](https://CRAN.R-project.org/package=rfm) package.

## License

MIT
