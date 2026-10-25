# plot_buttons() creates expected HTML

    Code
      plot_buttons(NS("plot"), "Plot")
    Output
      <div class="plot-buttons">
        <div class="col-sm-4" align="left">
          <div class="title-help">
            <div class="plot-title">
              <h3>Plot</h3>
            </div>
            <div class="plot-help">
              <a target="_blank" href="https://rfm.rsquaredacademy.com">
                
                <i class="far fa-circle-question fa-1x" role="presentation" aria-label="circle-question icon"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 offset-md-2 col-sm-offset-2" align="right">
          <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
            <button class="btn btn-default action-button btn_customize_plot" id="plot-btn_customize" onclick="App.plotOptions(this, &#39;customize&#39;)" style="width:120px;" type="button"><span class="action-label">Modify</span></button>
          </div>
          <div class="col-sm-4" align="right">
            <button class="btn btn-default action-button btn_download_opt" id="plot-btn_download_opt" onclick="App.plotOptions(this, &#39;toggle&#39;)" style="width:120px;" type="button"><span class="action-label">Export</span></button>
          </div>
        </div>
      </div>

# plot_download_options() creates expected HTML

    Code
      plot_download_options(NS("plot"))
    Output
      <div>
        <div class="col-sm-6"></div>
        <div class="col-sm-6" align="right">
          <div class="download-options">
            <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
              <div id="plot-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="plot-download_type-label">
                <label class="control-label" id="plot-download_type-label" for="plot-download_type"></label>
                <div class="shiny-options-group inline-radio">
                  <div class="radio">
                    <label>
                      <input type="radio" name="plot-download_type" value="png" checked="checked"/>
                      <span>PNG</span>
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="plot-download_type" value="jpeg"/>
                      <span>JPEG</span>
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-4" align="right">
              <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="plot-btn_download_plot" tabindex="-1" target="_blank">
                <i class="fas fa-download" role="presentation" aria-label="download icon"></i>
                Download
              </a>
            </div>
          </div>
        </div>
      </div>

# inlineRadio() creates expected HTML

    Code
      inlineRadio(NS("plot"))
    Output
      <div id="plot-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="plot-download_type-label">
        <label class="control-label" id="plot-download_type-label" for="plot-download_type"></label>
        <div class="shiny-options-group inline-radio">
          <div class="radio">
            <label>
              <input type="radio" name="plot-download_type" value="png" checked="checked"/>
              <span>PNG</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="plot-download_type" value="jpeg"/>
              <span>JPEG</span>
            </label>
          </div>
        </div>
      </div>

# plot_modify_ui() creates expected HTML

    Code
      plot_modify_ui(NS("plot"))
    Output
      <div class="row">
        <div class="col-sm-6" align="center">
          <button class="btn btn-default action-button btn_reset_plot" id="plot-btn_reset" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-arrow-rotate-left" role="presentation" aria-label="arrow-rotate-left icon"></i></span><span class="action-label">Reset</span></button>
        </div>
        <div class="col-sm-6" align="center">
          <button class="btn btn-default action-button btn_resize_plot" id="plot-btn_resize" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Generate</span></button>
        </div>
      </div>

# plot_title() creates expected HTML

    Code
      plot_title(NS("plot"), "Bar Chart")
    Output
      <details>
        <summary>Title</summary>
        <div class="col-sm-12" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-plot_title-label" for="plot-plot_title">Plot title</label>
            <input id="plot-plot_title" type="text" class="shiny-input-text form-control" value="Bar Chart" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_axis_labels() creates expected HTML

    Code
      plot_axis_labels(NS("plot"), "Recency", "Frequency")
    Output
      <details>
        <summary>Axis Labels</summary>
        <div class="col-sm-5" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-x_axis_label-label" for="plot-x_axis_label">X Axis Label</label>
            <input id="plot-x_axis_label" type="text" class="shiny-input-text form-control" value="Recency" data-update-on="change"/>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-y_axis_label-label" for="plot-y_axis_label">Y Axis Label</label>
            <input id="plot-y_axis_label" type="text" class="shiny-input-text form-control" value="Frequency" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_sort() creates expected HTML

    Code
      plot_sort(NS("plot"))
    Output
      <details>
        <summary>Sort</summary>
        <div class="col-sm-6" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="plot-sort" type="checkbox" class="shiny-input-checkbox"/>
                <span>Sort</span>
              </label>
            </div>
          </div>
        </div>
        <div class="col-sm-6" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="plot-ascending" type="checkbox" class="shiny-input-checkbox"/>
                <span>Ascending</span>
              </label>
            </div>
          </div>
        </div>
      </details>

# plot_flip() creates expected HTML

    Code
      plot_flip(NS("plot"))
    Output
      <details>
        <summary>Flip / Interactive</summary>
        <div class="col-sm-6" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="plot-flip" type="checkbox" class="shiny-input-checkbox"/>
                <span>Flip</span>
              </label>
            </div>
          </div>
        </div>
        <div class="col-sm-6" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="plot-interactive" type="checkbox" class="shiny-input-checkbox"/>
                <span>Interactive</span>
              </label>
            </div>
          </div>
        </div>
      </details>

---

    Code
      plot_flip(NS("plot"), FALSE)
    Output
      <details>
        <summary>Flip / Interactive</summary>
        <div class="col-sm-6" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="plot-interactive" type="checkbox" class="shiny-input-checkbox"/>
                <span>Interactive</span>
              </label>
            </div>
          </div>
        </div>
      </details>

# plot_axis_angle() creates expected HTML

    Code
      plot_axis_angle(NS("plot"))
    Output
      <details>
        <summary>Size / Angle</summary>
        <div class="axis-labels">
          <div class="col-sm-2" align="right">
            <h5>Size:</h5>
          </div>
          <div class="col-sm-4" align="left">
            <div class="form-group shiny-input-container">
              <label class="control-label" id="plot-axis_label_size-label" for="plot-axis_label_size"></label>
              <input id="plot-axis_label_size" type="number" class="shiny-input-number form-control" value="8" data-update-on="change"/>
            </div>
          </div>
          <div class="col-sm-2" align="right">
            <h5>Angle:</h5>
          </div>
          <div class="col-sm-4" align="left">
            <div class="form-group shiny-input-container">
              <label class="control-label" id="plot-axis_label_angle-label" for="plot-axis_label_angle"></label>
              <input id="plot-axis_label_angle" type="number" class="shiny-input-number form-control" value="315" data-update-on="change"/>
            </div>
          </div>
        </div>
      </details>

# plot_bar_color() creates expected HTML

    Code
      plot_bar_color(NS("plot"))
    Output
      <details>
        <summary>Color</summary>
        <div class="col-sm-12" align="left">
          <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
            <label class="control-label" for="plot-bar_color">Select colour</label>
            <input id="plot-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="#0f1a34" data-show-colour="both" data-palette="square"/>
          </div>
        </div>
      </details>

# plot_bar_label_color() creates expected HTML

    Code
      plot_bar_label_color(NS("plot"))
    Output
      <details>
        <summary>Bar Labels</summary>
        <div class="bar-labels">
          <div class="col-sm-6" align="center">
            <div class="form-group shiny-input-container">
              <div class="checkbox">
                <label>
                  <input id="plot-bar_label" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
                  <span>Bar Labels</span>
                </label>
              </div>
            </div>
          </div>
          <div class="col-sm-6" align="center">
            <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
              <label class="control-label" for="plot-bar_color">Select colour</label>
              <input id="plot-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="0f1a34" data-show-colour="both" data-palette="square"/>
            </div>
          </div>
        </div>
      </details>

# plot_bar_label_size() creates expected HTML

    Code
      plot_bar_label_size(NS("plot"))
    Output
      <details>
        <summary>Bar Labels</summary>
        <div class="bar-labels">
          <div class="col-sm-6" align="center">
            <div class="form-group shiny-input-container">
              <div class="checkbox">
                <label>
                  <input id="plot-bar_label" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
                  <span>Bar Labels</span>
                </label>
              </div>
            </div>
          </div>
          <div class="col-sm-2" align="right">
            <h5>Size:</h5>
          </div>
          <div class="col-sm-4" align="left">
            <div class="form-group shiny-input-container">
              <label class="control-label" id="plot-bar_label_size-label" for="plot-bar_label_size"></label>
              <input id="plot-bar_label_size" type="number" class="shiny-input-number form-control" value="2.5" data-update-on="change" min="1" step="0.1"/>
            </div>
          </div>
        </div>
      </details>

# plot_legend_title() creates expected HTML

    Code
      plot_legend_title(NS("plot"), "Bar Chart")
    Output
      <details>
        <summary>Legend</summary>
        <div class="col-sm-12" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-legend_title-label" for="plot-legend_title">Title</label>
            <input id="plot-legend_title" type="text" class="shiny-input-text form-control" value="Bar Chart" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_revenue_colors() creates expected HTML

    Code
      plot_revenue_colors(NS("plot"))
    Output
      <details>
        <summary>Colors</summary>
        <div class="col-sm-5" align="left">
          <div class="form-group shiny-input-container" style="width:80%;" data-shiny-input-type="colour">
            <label class="control-label" for="plot-color_revenue">Revenue</label>
            <input id="plot-color_revenue" type="text" class="form-control shiny-colour-input" data-init-value="#3b5bdb" data-show-colour="both" data-palette="square"/>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
          <div class="form-group shiny-input-container" style="width:80%;" data-shiny-input-type="colour">
            <label class="control-label" for="plot-color_customer">Customer</label>
            <input id="plot-color_customer" type="text" class="form-control shiny-colour-input" data-init-value="#91a7ff" data-show-colour="both" data-palette="square"/>
          </div>
        </div>
      </details>

# plot_revenue_labels() creates expected HTML

    Code
      plot_revenue_labels(NS("plot"))
    Output
      <details>
        <summary>Legend Labels</summary>
        <div class="col-sm-5" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-label_revenue-label" for="plot-label_revenue">Revenue</label>
            <input id="plot-label_revenue" type="text" class="shiny-input-text form-control" value="Revenue" data-update-on="change"/>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-label_customer-label" for="plot-label_customer">Customers</label>
            <input id="plot-label_customer" type="text" class="shiny-input-text form-control" value="Customers" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_hist_color_bins() creates expected HTML

    Code
      plot_hist_color_bins(NS("plot"))
    Output
      <details>
        <summary>Bins / Color</summary>
        <div class="bar-labels">
          <div class="col-sm-6" align="center">
            <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
              <label class="control-label" for="plot-bar_color">Select colour</label>
              <input id="plot-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="0f1a34" data-show-colour="both" data-palette="square"/>
            </div>
          </div>
          <div class="col-sm-2" align="right">
            <h5>Bins:</h5>
          </div>
          <div class="col-sm-4" align="left">
            <div class="form-group shiny-input-container">
              <label class="control-label" id="plot-bins-label" for="plot-bins"></label>
              <input id="plot-bins" type="number" class="shiny-input-number form-control" value="9" data-update-on="change"/>
            </div>
          </div>
        </div>
      </details>

# plot_brewer_name() creates expected HTML

    Code
      plot_brewer_name(NS("plot"))
    Output
      <details>
        <summary>Color</summary>
        <div class="col-sm-12" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-brewer_name-label" for="plot-brewer_name">Brewer Name</label>
            <input id="plot-brewer_name" type="text" class="shiny-input-text form-control" value="PuBu" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_bar_primary_axis() creates expected HTML

    Code
      plot_bar_primary_axis(NS("plot"))
    Output
      <details>
        <summary>Primary Axis Labels</summary>
        <div class="col-sm-5" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-x_axis_label-label" for="plot-x_axis_label">X Axis</label>
            <input id="plot-x_axis_label" type="text" class="shiny-input-text form-control" value="Monetary Score" data-update-on="change"/>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-y_axis_label-label" for="plot-y_axis_label">Y Axis</label>
            <input id="plot-y_axis_label" type="text" class="shiny-input-text form-control" value="" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_bar_secondary_axis() creates expected HTML

    Code
      plot_bar_secondary_axis(NS("plot"))
    Output
      <details>
        <summary>Secondary Axis Labels</summary>
        <div class="col-sm-5" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-sec_x_axis_label-label" for="plot-sec_x_axis_label">X Axis</label>
            <input id="plot-sec_x_axis_label" type="text" class="shiny-input-text form-control" value="Frequency Score" data-update-on="change"/>
          </div>
        </div>
        <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-sec_y_axis_label-label" for="plot-sec_y_axis_label">Y Axis</label>
            <input id="plot-sec_y_axis_label" type="text" class="shiny-input-text form-control" value="Recency Score" data-update-on="change"/>
          </div>
        </div>
      </details>

# plot_segment_metric() creates expected HTML

    Code
      plot_segment_metric(NS("plot"))
    Output
      <details>
        <summary>Metric</summary>
        <div class="col-sm-12" align="left">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="plot-metric-label" for="plot-metric"></label>
            <div>
              <select id="plot-metric" class="shiny-input-select"><option value="customers" selected>Customers</option>
      <option value="orders">Orders</option>
      <option value="revenue">Revenue</option></select>
              <script type="application/json" data-for="plot-metric" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
            </div>
          </div>
        </div>
      </details>

# scatter_nav_btns() creates expected HTML

    Code
      scatter_nav_btns(NS("plot"))
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="plot-back" onclick="App.highlightTab(this, &#39;scatter-back&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next" id="plot-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

# plot_minimize() creates expected HTML

    Code
      plot_minimize(NS("plot"))
    Output
      <div class="row">
        <div class="col-sm-6" align="left">
          <h4>Modify Plot</h4>
        </div>
        <div class="col-sm-6" align="right">
          <button class="btn btn-default action-button btn_minimize" id="plot-btn_minimize" onclick="App.plotOptions(this, &#39;resize&#39;)" type="button"><span class="action-icon"><i class="far fa-window-minimize" role="presentation" aria-label="window-minimize icon"></i></span><span class="action-label"></span></button>
        </div>
        <div class="col-sm-12" align="center">
          <hr/>
        </div>
      </div>

