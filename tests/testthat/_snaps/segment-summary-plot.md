# segment_summary_plot_ui() creates the expected HTML

    Code
      segment_summary_plot_ui("segment_summary_plot")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_segment_summary_plot">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="plot-buttons">
                <div class="col-sm-4" align="left">
                  <div class="title-help">
                    <div class="plot-title">
                      <h3>Segment Summary Plot</h3>
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
                    <button class="btn btn-default action-button btn_customize_plot" id="segment_summary_plot-btn_customize" onclick="App.plotOptions(this, &#39;customize&#39;)" style="width:120px;" type="button"><span class="action-label">Modify</span></button>
                  </div>
                  <div class="col-sm-4" align="right">
                    <button class="btn btn-default action-button btn_download_opt" id="segment_summary_plot-btn_download_opt" onclick="App.plotOptions(this, &#39;toggle&#39;)" style="width:120px;" type="button"><span class="action-label">Export</span></button>
                  </div>
                </div>
              </div>
              <div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6" align="right">
                  <div class="download-options">
                    <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
                      <div id="segment_summary_plot-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="segment_summary_plot-download_type-label">
                        <label class="control-label" id="segment_summary_plot-download_type-label" for="segment_summary_plot-download_type"></label>
                        <div class="shiny-options-group inline-radio">
                          <div class="radio">
                            <label>
                              <input type="radio" name="segment_summary_plot-download_type" value="png" checked="checked"/>
                              <span>PNG</span>
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" name="segment_summary_plot-download_type" value="jpeg"/>
                              <span>JPEG</span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4" align="right">
                      <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="segment_summary_plot-btn_download_plot" tabindex="-1" target="_blank">
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
                      <button class="btn btn-default action-button btn_minimize" id="segment_summary_plot-btn_minimize" onclick="App.plotOptions(this, &#39;resize&#39;)" type="button"><span class="action-icon"><i class="far fa-window-minimize" role="presentation" aria-label="window-minimize icon"></i></span><span class="action-label"></span></button>
                    </div>
                    <div class="col-sm-12" align="center">
                      <hr/>
                    </div>
                  </div>
                  <details>
                    <summary>Metric</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="segment_summary_plot-metric-label" for="segment_summary_plot-metric"></label>
                        <div>
                          <select id="segment_summary_plot-metric" class="shiny-input-select"><option value="customers" selected>Customers</option>
      <option value="orders">Orders</option>
      <option value="revenue">Revenue</option>
      <option value="aov">AOV</option></select>
                          <script type="application/json" data-for="segment_summary_plot-metric" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                        </div>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Title</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="segment_summary_plot-plot_title-label" for="segment_summary_plot-plot_title">Plot title</label>
                        <input id="segment_summary_plot-plot_title" type="text" class="shiny-input-text form-control" value="Customer Distribution by Segment" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Axis Labels</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="segment_summary_plot-x_axis_label-label" for="segment_summary_plot-x_axis_label">X Axis Label</label>
                        <input id="segment_summary_plot-x_axis_label" type="text" class="shiny-input-text form-control" value="Segment" data-update-on="change"/>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="segment_summary_plot-y_axis_label-label" for="segment_summary_plot-y_axis_label">Y Axis Label</label>
                        <input id="segment_summary_plot-y_axis_label" type="text" class="shiny-input-text form-control" value="Customers" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Bar Labels</summary>
                    <div class="bar-labels">
                      <div class="col-sm-6" align="center">
                        <div class="form-group shiny-input-container">
                          <div class="checkbox">
                            <label>
                              <input id="segment_summary_plot-bar_label" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
                              <span>Bar Labels</span>
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6" align="center">
                        <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
                          <label class="control-label" for="segment_summary_plot-bar_color">Select colour</label>
                          <input id="segment_summary_plot-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="0f1a34" data-show-colour="both" data-palette="square"/>
                        </div>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Size / Angle</summary>
                    <div class="axis-labels">
                      <div class="col-sm-2" align="right">
                        <h5>Size:</h5>
                      </div>
                      <div class="col-sm-4" align="left">
                        <div class="form-group shiny-input-container">
                          <label class="control-label" id="segment_summary_plot-axis_label_size-label" for="segment_summary_plot-axis_label_size"></label>
                          <input id="segment_summary_plot-axis_label_size" type="number" class="shiny-input-number form-control" value="8" data-update-on="change"/>
                        </div>
                      </div>
                      <div class="col-sm-2" align="right">
                        <h5>Angle:</h5>
                      </div>
                      <div class="col-sm-4" align="left">
                        <div class="form-group shiny-input-container">
                          <label class="control-label" id="segment_summary_plot-axis_label_angle-label" for="segment_summary_plot-axis_label_angle"></label>
                          <input id="segment_summary_plot-axis_label_angle" type="number" class="shiny-input-number form-control" value="315" data-update-on="change"/>
                        </div>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Sort</summary>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="segment_summary_plot-sort" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Sort</span>
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="segment_summary_plot-ascending" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Ascending</span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Flip / Interactive</summary>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="segment_summary_plot-flip" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Flip</span>
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="segment_summary_plot-interactive" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Interactive</span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </details>
                </div>
                <div class="row">
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_reset_plot" id="segment_summary_plot-btn_reset" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-arrow-rotate-left" role="presentation" aria-label="arrow-rotate-left icon"></i></span><span class="action-label">Reset</span></button>
                  </div>
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_resize_plot" id="segment_summary_plot-btn_resize" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Generate</span></button>
                  </div>
                </div>
              </div>
              <div class="plot">
                <div id="segment_summary_plot-plot_output" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="segment_summary_plot-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="segment_summary_plot-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

