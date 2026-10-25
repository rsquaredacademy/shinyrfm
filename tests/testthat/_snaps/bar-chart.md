# bar_chart_ui() creates the expected HTML

    Code
      bar_chart_ui("barchart")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_bar_chart">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="plot-buttons">
                <div class="col-sm-4" align="left">
                  <div class="title-help">
                    <div class="plot-title">
                      <h3>Bar Chart</h3>
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
                    <button class="btn btn-default action-button btn_customize_plot" id="barchart-btn_customize" onclick="App.plotOptions(this, &#39;customize&#39;)" style="width:120px;" type="button"><span class="action-label">Modify</span></button>
                  </div>
                  <div class="col-sm-4" align="right">
                    <button class="btn btn-default action-button btn_download_opt" id="barchart-btn_download_opt" onclick="App.plotOptions(this, &#39;toggle&#39;)" style="width:120px;" type="button"><span class="action-label">Export</span></button>
                  </div>
                </div>
              </div>
              <div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6" align="right">
                  <div class="download-options">
                    <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
                      <div id="barchart-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="barchart-download_type-label">
                        <label class="control-label" id="barchart-download_type-label" for="barchart-download_type"></label>
                        <div class="shiny-options-group inline-radio">
                          <div class="radio">
                            <label>
                              <input type="radio" name="barchart-download_type" value="png" checked="checked"/>
                              <span>PNG</span>
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" name="barchart-download_type" value="jpeg"/>
                              <span>JPEG</span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4" align="right">
                      <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="barchart-btn_download_plot" tabindex="-1" target="_blank">
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
                      <button class="btn btn-default action-button btn_minimize" id="barchart-btn_minimize" onclick="App.plotOptions(this, &#39;resize&#39;)" type="button"><span class="action-icon"><i class="far fa-window-minimize" role="presentation" aria-label="window-minimize icon"></i></span><span class="action-label"></span></button>
                    </div>
                    <div class="col-sm-12" align="center">
                      <hr/>
                    </div>
                  </div>
                  <details>
                    <summary>Primary Axis Labels</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="barchart-x_axis_label-label" for="barchart-x_axis_label">X Axis</label>
                        <input id="barchart-x_axis_label" type="text" class="shiny-input-text form-control" value="Monetary Score" data-update-on="change"/>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="barchart-y_axis_label-label" for="barchart-y_axis_label">Y Axis</label>
                        <input id="barchart-y_axis_label" type="text" class="shiny-input-text form-control" value="" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Secondary Axis Labels</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="barchart-sec_x_axis_label-label" for="barchart-sec_x_axis_label">X Axis</label>
                        <input id="barchart-sec_x_axis_label" type="text" class="shiny-input-text form-control" value="Frequency Score" data-update-on="change"/>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="barchart-sec_y_axis_label-label" for="barchart-sec_y_axis_label">Y Axis</label>
                        <input id="barchart-sec_y_axis_label" type="text" class="shiny-input-text form-control" value="Recency Score" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Color</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
                        <label class="control-label" for="barchart-bar_color">Select colour</label>
                        <input id="barchart-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="#0f1a34" data-show-colour="both" data-palette="square"/>
                      </div>
                    </div>
                  </details>
                </div>
                <div class="row">
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_reset_plot" id="barchart-btn_reset" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-arrow-rotate-left" role="presentation" aria-label="arrow-rotate-left icon"></i></span><span class="action-label">Reset</span></button>
                  </div>
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_resize_plot" id="barchart-btn_resize" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Generate</span></button>
                  </div>
                </div>
              </div>
              <div class="plot">
                <div class="standby">
                  <div class="standby-wait dot-elastic" id="threedots"></div>
                  <div class="shiny-plot-output html-fill-item" id="barchart-plot_bar_chart" style="width:100%;height:400px;"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="barchart-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="barchart-next" onclick="App.highlightTab(this, &#39;next-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

