# configure_ui() creates the expected HTML

    Code
      configure_ui("config")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_config">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Configure</h3>
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
            <div class="set_options">
              <div class="config">
                <div class="col-sm-3">
                  <div class="form-group shiny-input-container">
                    <label class="control-label" id="config-set_data_format-label" for="config-set_data_format">Data Format</label>
                    <div>
                      <select id="config-set_data_format" class="shiny-input-select"><option value="transaction" selected>Transaction Level Data</option>
      <option value="customer_days">Customer Level Data (Days)</option>
      <option value="customer_date">Customer Level Data (Date)</option></select>
                      <script type="application/json" data-for="config-set_data_format" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                    </div>
                  </div>
                </div>
              </div>
              <div class="config">
                <div class="col-sm-3" align="left">
                  <div class="form-group shiny-input-container" style="width:100%;">
                    <label class="control-label" id="config-set_currency-label" for="config-set_currency">Currency</label>
                    <div>
                      <select id="config-set_currency" class="shiny-input-select"><option value="$">Dollar</option>
      <option value="€">Euro</option>
      <option value="£">Pound Sterling</option>
      <option value="₹">Indian Rupee</option>
      <option value="₣">Franc</option>
      <option value="₽">Russian Ruble</option>
      <option value="₨">Rupees</option>
      <option value="﷼">Iranian Rial</option>
      <option value="₺">Turkish Lira</option>
      <option value="฿">Thai Baht</option>
      <option value="₵">Ghanian Cedi</option>
      <option value="₡">Costa Rican Colon</option>
      <option value="₫">Vietnamese Dong</option>
      <option value="֏">Armenian Dram</option>
      <option value="₲">Paraguayan Guarani</option>
      <option value="₴">Ukrainian Hryvnia</option>
      <option value="₭">Laotian Kip</option>
      <option value="₾">Georgian Lari</option>
      <option value="₼">Azerbaijani Manat</option>
      <option value="₱">Philippine Peso</option>
      <option value="₦">Nigerian Naira</option>
      <option value=" " selected>None</option></select>
                      <script type="application/json" data-for="config-set_currency" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
                    </div>
                  </div>
                </div>
              </div>
              <div class="config">
                <div class="col-sm-3" align="left">
                  <div class="form-group shiny-input-container" style="width:100%;" data-shiny-input-type="colour">
                    <label class="control-label" for="config-set_color">Plot Color</label>
                    <input id="config-set_color" type="text" class="form-control shiny-colour-input" data-init-value="0f1a34" data-show-colour="both" data-palette="square"/>
                  </div>
                </div>
              </div>
              <div class="config">
                <div class="col-sm-3" align="left">
                  <p>Plot Type</p>
                  <div class="form-group shiny-input-container">
                    <div class="checkbox">
                      <label>
                        <input id="config-set_engine" type="checkbox" class="shiny-input-checkbox"/>
                        <span>Interactive</span>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="config">
                <div class="col-sm-3" align="left">
                  <div id="config-set_file_type" class="form-group shiny-input-radiogroup shiny-input-container shiny-input-container-inline" role="radiogroup" aria-labelledby="config-set_file_type-label">
                    <label class="control-label" id="config-set_file_type-label" for="config-set_file_type">Plot File Type</label>
                    <div class="shiny-options-group">
                      <label class="radio-inline">
                        <input type="radio" name="config-set_file_type" value="png" checked="checked"/>
                        <span>PNG</span>
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="config-set_file_type" value="jpeg"/>
                        <span>JPEG</span>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12" align="center">
                <button id="config-btn_config" type="button" class="btn btn-default action-button" onclick="App.highlightTab(this, &#39;next-tab&#39;)"><span class="action-label">Update</span></button>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="config-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="config-next" onclick="App.highlightTab(this, &#39;next-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

