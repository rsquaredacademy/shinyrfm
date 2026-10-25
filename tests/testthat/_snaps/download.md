# download_ui() creates the expected HTML

    Code
      download_ui("download_segment")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_download">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Download Segments</h3>
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
                  <label class="control-label" id="download_segment-download-label" for="download_segment-download">Download</label>
                  <div>
                    <select id="download_segment-download" class="shiny-input-select"></select>
                    <script type="application/json" data-for="download_segment-download" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                  </div>
                </div>
              </div>
              <div class="col-sm-12" align="center">
                <a aria-disabled="true" class="btn btn-default shiny-download-link disabled" download href="" id="download_segment-btn_download" tabindex="-1" target="_blank">
                  <i class="fas fa-download" role="presentation" aria-label="download icon"></i>
                  Download
                </a>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12" align="center">
                <div class="datatables html-widget html-widget-output shiny-report-size html-fill-item" id="download_segment-table" style="width:100%;height:auto;"></div>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button id="download_segment-back" type="button" class="btn btn-default action-button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button id="download_segment-next" type="button" class="btn btn-default action-button" onclick="App.highlightTab(this, &#39;exit-tab&#39;)"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

