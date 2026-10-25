# path_ui() creates the expected HTML

    Code
      path_ui("add_path")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_path">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Retrieve Path &amp; Projects</h3>
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
              <div class="col-sm-12" align="center">
                <div class="form-group shiny-input-container">
                  <label class="control-label" id="add_path-path-label" for="add_path-path">Directory</label>
                  <input id="add_path-path" type="text" class="shiny-input-text form-control" value="" data-update-on="change"/>
                </div>
                <button class="btn btn-default action-button btn-path" id="add_path-btn_lookup_path" type="button"><span class="action-label">Retrieve Path</span></button>
                <button class="btn btn-default action-button btn-retrieve" id="add_path-btn_save_path" type="button"><span class="action-label">Retrieve Projects</span></button>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6" align="left">
              <button class="btn btn-default action-button btn-back" id="add_path-back" onclick="App.highlightTab(this, &#39;upload-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
            </div>
          </div>
        </div>
      </div>

