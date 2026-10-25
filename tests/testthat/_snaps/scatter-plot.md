# scatter_plot_ui() creates the expected HTML

    Code
      scatter_plot_ui("scatter_plot")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_scatter_plot">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="plot-buttons">
                <div class="col-sm-4" align="left">
                  <div class="title-help">
                    <div class="plot-title">
                      <h3>Segment Scatter Plot</h3>
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
                    <button class="btn btn-default action-button btn_customize_plot" id="scatter_plot-btn_customize" onclick="App.plotOptions(this, &#39;customize&#39;)" style="width:120px;" type="button"><span class="action-label">Modify</span></button>
                  </div>
                  <div class="col-sm-4" align="right">
                    <button class="btn btn-default action-button btn_download_opt" id="scatter_plot-btn_download_opt" onclick="App.plotOptions(this, &#39;toggle&#39;)" style="width:120px;" type="button"><span class="action-label">Export</span></button>
                  </div>
                </div>
              </div>
              <div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6" align="right">
                  <div class="download-options">
                    <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
                      <div id="scatter_plot-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="scatter_plot-download_type-label">
                        <label class="control-label" id="scatter_plot-download_type-label" for="scatter_plot-download_type"></label>
                        <div class="shiny-options-group inline-radio">
                          <div class="radio">
                            <label>
                              <input type="radio" name="scatter_plot-download_type" value="png" checked="checked"/>
                              <span>PNG</span>
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" name="scatter_plot-download_type" value="jpeg"/>
                              <span>JPEG</span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4" align="right">
                      <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="scatter_plot-btn_download_plot" tabindex="-1" target="_blank">
                        <i class="fas fa-download" role="presentation" aria-label="download icon"></i>
                        Download
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-12" align="center">
                <hr/>
              </div>
            </div>
            <div class="plot-order-dist">
              <div class="plot-settings">
                <div class="plot-details">
                  <div class="row">
                    <div class="col-sm-6" align="left">
                      <h4>Modify Plot</h4>
                    </div>
                    <div class="col-sm-6" align="right">
                      <button class="btn btn-default action-button btn_minimize" id="scatter_plot-btn_minimize" onclick="App.plotOptions(this, &#39;resize&#39;)" type="button"><span class="action-icon"><i class="far fa-window-minimize" role="presentation" aria-label="window-minimize icon"></i></span><span class="action-label"></span></button>
                    </div>
                    <div class="col-sm-12" align="center">
                      <hr/>
                    </div>
                  </div>
                  <details>
                    <summary>Metric</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-metric_x-label" for="scatter_plot-metric_x">Metric</label>
                        <div>
                          <select id="scatter_plot-metric_x" class="shiny-input-select"><option value="recency">Recency</option>
      <option value="frequency">Frequency</option>
      <option value="monetary" selected>Monetary Value</option></select>
                          <script type="application/json" data-for="scatter_plot-metric_x" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-metric_y-label" for="scatter_plot-metric_y">Metric</label>
                        <div>
                          <select id="scatter_plot-metric_y" class="shiny-input-select"><option value="recency" selected>Recency</option>
      <option value="frequency">Frequency</option>
      <option value="monetary">Monetary Value</option></select>
                          <script type="application/json" data-for="scatter_plot-metric_y" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                        </div>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Title</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-plot_title-label" for="scatter_plot-plot_title">Plot title</label>
                        <input id="scatter_plot-plot_title" type="text" class="shiny-input-text form-control" value="Recency vs Monetary Value" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Axis Labels</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-x_axis_label-label" for="scatter_plot-x_axis_label">X Axis Label</label>
                        <input id="scatter_plot-x_axis_label" type="text" class="shiny-input-text form-control" value="Monetary Value" data-update-on="change"/>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-y_axis_label-label" for="scatter_plot-y_axis_label">Y Axis Label</label>
                        <input id="scatter_plot-y_axis_label" type="text" class="shiny-input-text form-control" value="Recency" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Legend</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="scatter_plot-legend_title-label" for="scatter_plot-legend_title">Title</label>
                        <input id="scatter_plot-legend_title" type="text" class="shiny-input-text form-control" value="Segment" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Flip / Interactive</summary>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="scatter_plot-interactive" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Interactive</span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </details>
                </div>
                <div class="row">
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_reset_plot" id="scatter_plot-btn_reset" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-arrow-rotate-left" role="presentation" aria-label="arrow-rotate-left icon"></i></span><span class="action-label">Reset</span></button>
                  </div>
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_resize_plot" id="scatter_plot-btn_resize" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Generate</span></button>
                  </div>
                </div>
              </div>
              <div class="plot">
                <div id="scatter_plot-plot_output" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="scatter_plot-back" onclick="App.highlightTab(this, &#39;scatter-back&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="scatter_plot-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

