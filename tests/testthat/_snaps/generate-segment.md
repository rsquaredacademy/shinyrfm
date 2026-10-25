# generate_segment_ui() creates the expected HTML

    Code
      generate_segment_ui("generate_segment")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_generate_segments">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="tab-title">
                <div class="row">
                  <div class="col-sm-6" align="left">
                    <h3>Generate Segments</h3>
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
              <div class="col-sm-12" align="center">
                <div id="generate_segment-add_segments" class="form-group shiny-input-radiogroup shiny-input-container shiny-input-container-inline" role="radiogroup" aria-labelledby="generate_segment-add_segments-label">
                  <label class="control-label" id="generate_segment-add_segments-label" for="generate_segment-add_segments"></label>
                  <div class="shiny-options-group">
                    <label class="radio-inline">
                      <input type="radio" name="generate_segment-add_segments" value="predefined" checked="checked"/>
                      <span>Pre-defined</span>
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="generate_segment-add_segments" value="custom"/>
                      <span>Custom</span>
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div id="generate_segment-ui_segment" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="generate_segment-back" onclick="App.highlightTab(this, &#39;back-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next btn-next-delay" id="generate_segment-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

