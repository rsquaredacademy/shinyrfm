# generate_score_ui() creates the expected HTML

    Code
      generate_score_ui("generate_score")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_generate_score">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="col-sm-12">
                <div id="generate_score-ui_generate_score" class="shiny-html-output"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="generate_score-back" onclick="App.highlightTab(this, &#39;back-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next btn-next-delay" id="generate_score-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

