# upload_csv() creates expected HTML

    Code
      upload_csv(NS("upload"))
    Output
      <div class="row">
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="upload-data_file-label" for="upload-data_file">Choose file:</label>
            <div class="input-group">
              <label class="input-group-btn input-group-prepend">
                <span class="btn btn-default btn-file">
                  Browse...
                  <input id="upload-data_file" class="shiny-input-file" name="upload-data_file" type="file" style="position: absolute !important; top: -99999px !important; left: -99999px !important;" accept="text/csv,.csv,text/comma-separated-values,text/plain"/>
                </span>
              </label>
              <input type="text" class="form-control" placeholder="No file selected" readonly="readonly"/>
            </div>
            <div id="upload-data_file_progress" class="progress active shiny-file-input-progress">
              <div class="progress-bar"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container">
            <div class="checkbox">
              <label>
                <input id="upload-header" type="checkbox" class="shiny-input-checkbox" checked="checked"/>
                <span>Header</span>
              </label>
            </div>
          </div>
        </div>
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="upload-sep-label" for="upload-sep">Separator</label>
            <div>
              <select id="upload-sep" class="shiny-input-select"><option value="," selected>Comma</option>
      <option value=";">Semicolon</option>
      <option value="	">Tab</option></select>
              <script type="application/json" data-for="upload-sep" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
            </div>
          </div>
        </div>
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="upload-quote-label" for="upload-quote">Quote</label>
            <div>
              <select id="upload-quote" class="shiny-input-select"><option value="" selected>None</option>
      <option value="&quot;">Double Quote</option>
      <option value="&#39;">Single Quote</option></select>
              <script type="application/json" data-for="upload-quote">{"plugins":["selectize-plugin-a11y"]}</script>
            </div>
          </div>
        </div>
      </div>

# upload_excel() creates expected HTML

    Code
      upload_excel(NS("upload"))
    Output
      <div class="row">
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container">
            <label class="control-label" id="upload-data_file-label" for="upload-data_file">Choose file:</label>
            <div class="input-group">
              <label class="input-group-btn input-group-prepend">
                <span class="btn btn-default btn-file">
                  Browse...
                  <input id="upload-data_file" class="shiny-input-file" name="upload-data_file" type="file" style="position: absolute !important; top: -99999px !important; left: -99999px !important;" accept=".xls,.xlsx"/>
                </span>
              </label>
              <input type="text" class="form-control" placeholder="No file selected" readonly="readonly"/>
            </div>
            <div id="upload-data_file_progress" class="progress active shiny-file-input-progress">
              <div class="progress-bar"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-12" align="center">
          <div class="form-group shiny-input-container" style="width:120px;">
            <label class="control-label" id="upload-sheet_n-label" for="upload-sheet_n">Sheet</label>
            <input id="upload-sheet_n" type="number" class="shiny-input-number form-control" value="1" data-update-on="change" min="1" step="1"/>
          </div>
        </div>
      </div>

# ui_sample_file() creates expected HTML

    Code
      ui_sample_file(NS("upload"))
    Output
      <div class="row">
        <div class="tab-title">
          <div class="row">
            <div class="col-sm-6" align="left">
              <h3>Sample Data</h3>
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
        <div class="data-type-options">
          <div class="col-sm-12" align="center">
            <div id="upload-sample_type" class="form-group shiny-input-radiogroup shiny-input-container" role="radiogroup" aria-labelledby="upload-sample_type-label">
              <label class="control-label" id="upload-sample_type-label" for="upload-sample_type">Select sample type</label>
              <div class="shiny-options-group">
                <div class="radio">
                  <label>
                    <input type="radio" name="upload-sample_type" value="transaction" checked="checked"/>
                    <span>Transaction Level Data</span>
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="upload-sample_type" value="customer_days"/>
                    <span>Customer Level Data (Days)</span>
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="upload-sample_type" value="customer_date"/>
                    <span>Customer Level Data (Date)</span>
                  </label>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br/>
      <div class="row">
        <div class="col-sm-12" align="center">
          <button id="upload-btn_restore_project" type="button" class="btn btn-default action-button" onclick="App.plotOptions(this, &#39;display&#39;)"><span class="action-label">Submit</span></button>
        </div>
      </div>

# ui_upload_file() creates expected HTML

    Code
      ui_upload_file(NS("upload"))
    Output
      <div>
        <div class="row">
          <div class="tab-title">
            <div class="row">
              <div class="col-sm-6" align="left">
                <h3>Upload Data</h3>
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
            <div id="upload-upload_options" class="form-group shiny-input-radiogroup shiny-input-container shiny-input-container-inline" role="radiogroup" aria-labelledby="upload-upload_options-label">
              <label class="control-label" id="upload-upload_options-label" for="upload-upload_options"></label>
              <div class="shiny-options-group">
                <label class="radio-inline">
                  <input type="radio" name="upload-upload_options" value="csv" checked="checked"/>
                  <span>CSV</span>
                </label>
                <label class="radio-inline">
                  <input type="radio" name="upload-upload_options" value="excel"/>
                  <span>Excel</span>
                </label>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12" align="center">
            <div id="upload-ui_file" class="shiny-html-output"></div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12" align="center">
            <button id="upload-btn_restore_project" type="button" class="btn btn-default action-button" onclick="App.plotOptions(this, &#39;display&#39;)"><span class="action-label">Submit</span></button>
          </div>
        </div>
      </div>

# ui_list_projects() creates expected HTML

    Code
      ui_list_projects(NS("upload"))
    Output
      <div class="row">
        <br/>
        <div class="col-sm-12" align="center">
          <div id="upload-list_projects" class="shiny-html-output"></div>
        </div>
      </div>

# ui_clone_project() creates expected HTML

    Code
      ui_clone_project(NS("upload"))
    Output
      <div class="row">
        <br/>
        <div class="col-sm-12" align="center">
          <div id="upload-clone_project" class="shiny-html-output"></div>
        </div>
      </div>

