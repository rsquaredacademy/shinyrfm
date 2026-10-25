# screen_ui() creates the expected HTML

    Code
      screen_ui("screen")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_screen">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="col-sm-12">
                <div id="screen-screen_data" class="shiny-html-output"></div>
              </div>
              <div class="col-sm-12">
                <div id="screen-missing_info" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="screen-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="screen-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

