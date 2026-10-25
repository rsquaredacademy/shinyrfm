# order_dist_ui() creates the expected HTML

    Code
      order_dist_ui("order_dist")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_orders">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="plot-buttons">
                <div class="col-sm-4" align="left">
                  <div class="title-help">
                    <div class="plot-title">
                      <h3>Order Distribution</h3>
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
                    <button class="btn btn-default action-button btn_customize_plot" id="order_dist-btn_customize" onclick="App.plotOptions(this, &#39;customize&#39;)" style="width:120px;" type="button"><span class="action-label">Modify</span></button>
                  </div>
                  <div class="col-sm-4" align="right">
                    <button class="btn btn-default action-button btn_download_opt" id="order_dist-btn_download_opt" onclick="App.plotOptions(this, &#39;toggle&#39;)" style="width:120px;" type="button"><span class="action-label">Export</span></button>
                  </div>
                </div>
              </div>
              <div>
                <div class="col-sm-6"></div>
                <div class="col-sm-6" align="right">
                  <div class="download-options">
                    <div class="col-sm-4 offset-md-4 col-sm-offset-4" align="center">
                      <div id="order_dist-download_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="order_dist-download_type-label">
                        <label class="control-label" id="order_dist-download_type-label" for="order_dist-download_type"></label>
                        <div class="shiny-options-group inline-radio">
                          <div class="radio">
                            <label>
                              <input type="radio" name="order_dist-download_type" value="png" checked="checked"/>
                              <span>PNG</span>
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" name="order_dist-download_type" value="jpeg"/>
                              <span>JPEG</span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4" align="right">
                      <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="order_dist-btn_download_plot" tabindex="-1" target="_blank">
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
                      <button class="btn btn-default action-button btn_minimize" id="order_dist-btn_minimize" onclick="App.plotOptions(this, &#39;resize&#39;)" type="button"><span class="action-icon"><i class="far fa-window-minimize" role="presentation" aria-label="window-minimize icon"></i></span><span class="action-label"></span></button>
                    </div>
                    <div class="col-sm-12" align="center">
                      <hr/>
                    </div>
                  </div>
                  <details>
                    <summary>Title</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="order_dist-plot_title-label" for="order_dist-plot_title">Plot title</label>
                        <input id="order_dist-plot_title" type="text" class="shiny-input-text form-control" value="Customer Distribution by Orders" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Axis Labels</summary>
                    <div class="col-sm-5" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="order_dist-x_axis_label-label" for="order_dist-x_axis_label">X Axis Label</label>
                        <input id="order_dist-x_axis_label" type="text" class="shiny-input-text form-control" value="Orders" data-update-on="change"/>
                      </div>
                    </div>
                    <div class="col-sm-5 offset-md-2 col-sm-offset-2" align="left">
                      <div class="form-group shiny-input-container">
                        <label class="control-label" id="order_dist-y_axis_label-label" for="order_dist-y_axis_label">Y Axis Label</label>
                        <input id="order_dist-y_axis_label" type="text" class="shiny-input-text form-control" value="Customers" data-update-on="change"/>
                      </div>
                    </div>
                  </details>
                  <details>
                    <summary>Color</summary>
                    <div class="col-sm-12" align="left">
                      <div class="form-group shiny-input-container" style="width:50%;" data-shiny-input-type="colour">
                        <label class="control-label" for="order_dist-bar_color">Select colour</label>
                        <input id="order_dist-bar_color" type="text" class="form-control shiny-colour-input" data-init-value="#0f1a34" data-show-colour="both" data-palette="square"/>
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
                              <input id="order_dist-bar_label" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
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
                          <label class="control-label" id="order_dist-bar_label_size-label" for="order_dist-bar_label_size"></label>
                          <input id="order_dist-bar_label_size" type="number" class="shiny-input-number form-control" value="2.5" data-update-on="change" min="1" step="0.1"/>
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
                            <input id="order_dist-flip" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Flip</span>
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-6" align="center">
                      <div class="form-group shiny-input-container">
                        <div class="checkbox">
                          <label>
                            <input id="order_dist-interactive" type="checkbox" class="shiny-input-checkbox"/>
                            <span>Interactive</span>
                          </label>
                        </div>
                      </div>
                    </div>
                  </details>
                </div>
                <div class="row">
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_reset_plot" id="order_dist-btn_reset" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-arrow-rotate-left" role="presentation" aria-label="arrow-rotate-left icon"></i></span><span class="action-label">Reset</span></button>
                  </div>
                  <div class="col-sm-6" align="center">
                    <button class="btn btn-default action-button btn_resize_plot" id="order_dist-btn_resize" onclick="App.plotOptions(this, &#39;resize&#39;)" style="width:120px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Generate</span></button>
                  </div>
                </div>
              </div>
              <div class="plot">
                <div id="order_dist-plot_output" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="order_dist-back" onclick="App.highlightTab(this, &#39;back-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="order_dist-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

