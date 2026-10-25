# score_ui() generates the expected HTML

    Code
      score_ui("display_score")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_rfm_score">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="tab-title">
                <div class="row">
                  <div class="col-sm-6" align="left">
                    <h3>RFM Score</h3>
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
                <div class="standby">
                  <div class="standby-wait dot-elastic" id="threedots"></div>
                  <div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="display_score-view_score" style="width:100%;height:auto;"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="display_score-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="display_score-next" onclick="App.highlightTab(this, &#39;next-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

