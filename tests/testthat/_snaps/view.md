# view_ui() creates the expected HTML

    Code
      view_ui("view")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_view">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="col-sm-12">
                <div id="view-display_data" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="view-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="view-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

