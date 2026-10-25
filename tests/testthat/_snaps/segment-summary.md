# segment_summary_ui() creates the expected HTML

    Code
      segment_summary_ui("segment_summary")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_segment_summary">
        <div class="tab_container btn_end">
          <div>
            <div class="row">
              <div class="tab-title">
                <div class="row">
                  <div class="col-sm-6" align="left">
                    <h3>Segment Summary</h3>
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
                  <div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="segment_summary-segment_summary" style="width:100%;height:auto;"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="segment_summary-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="segment_summary-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

