# select_ui() creates the expected HTML

    Code
      select_ui("select")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_select">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Select Columns</h3>
                </div>
                <div class="col-sm-6" align="right">
                  <a target="_blank" href="https://rfm.rsquaredacademy.com">
                    
                    <i class="far fa-circle-question fa-2x" role="presentation" aria-label="circle-question icon"></i>
                  </a>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <hr/>
                </div>
              </div>
            </div>
            <div class="row">
              <button class="btn btn-default action-button btn-select" id="select-btn_select_all" style="width:150px;" type="button"><span class="action-label">Select All</span></button>
              <button class="btn btn-default action-button btn-clear" id="select-btn_clear_all" style="width:150px;" type="button"><span class="action-label">Clear</span></button>
            </div>
            <div class="row">
              <div class="col-sm-12" align="right">
                <div id="select-select_columns" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="select-select_columns-label">
                  <label class="control-label" id="select-select_columns-label" for="select-select_columns"></label>
                  <div class="shiny-options-group"></div>
                </div>
              </div>
            </div>
            <div class="tab-buttons">
              <div class="row">
                <div class="col-sm-8"></div>
                <div class="col-sm-4" align="left">
                  <button class="btn btn-default action-button btn-select-columns" id="select-btn_select_columns" onclick="App.plotOptions(this, &#39;display&#39;)" style="width:150px;" type="button"><span class="action-icon"><i class="fas fa-check" role="presentation" aria-label="check icon"></i></span><span class="action-label">Select Columns</span></button>
                </div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button id="select-back" type="button" class="btn btn-default action-button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next-delay" id="select-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

