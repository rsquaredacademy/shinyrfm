# inspect_ui() creates the expected HTML

    Code
      inspect_ui("checklist")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_examine">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Project Metadata</h3>
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
            <div id="checklist-data_inputs" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-data_inputs-label">
              <label class="control-label" id="checklist-data_inputs-label" for="checklist-data_inputs">Data</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_inputs" value="cols_selected"/>
                  <span>Columns Selected</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_inputs" value="col_new_names"/>
                  <span>Column Names</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_inputs" value="col_new_types"/>
                  <span>Column Data Types</span>
                </label>
              </div>
            </div>
            <div id="checklist-config_inputs" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-config_inputs-label">
              <label class="control-label" id="checklist-config_inputs-label" for="checklist-config_inputs">Configuration</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-config_inputs" value="currency"/>
                  <span>Currency</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-config_inputs" value="plot_color"/>
                  <span>Plot Color</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-config_inputs" value="plot_ext"/>
                  <span>Plot Extension</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-config_inputs" value="plot_mode"/>
                  <span>Interactive Plots</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-config_inputs" value="data_format"/>
                  <span>Data Format</span>
                </label>
              </div>
            </div>
            <div id="checklist-score_inputs" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-score_inputs-label">
              <label class="control-label" id="checklist-score_inputs-label" for="checklist-score_inputs">Score &amp; Segments</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-score_inputs" value="score_inputs"/>
                  <span>Score</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-score_inputs" value="segments_count"/>
                  <span>Segments</span>
                </label>
              </div>
            </div>
            <div id="checklist-eda_inputs" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-eda_inputs-label">
              <label class="control-label" id="checklist-eda_inputs-label" for="checklist-eda_inputs">Score Visualization</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-eda_inputs" value="order_dist"/>
                  <span>Order Distribution</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-eda_inputs" value="histogram"/>
                  <span>Histograms</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-eda_inputs" value="heatmap"/>
                  <span>Heat Map</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-eda_inputs" value="bar_chart"/>
                  <span>Bar Chart</span>
                </label>
              </div>
            </div>
            <div id="checklist-viz_inputs" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-viz_inputs-label">
              <label class="control-label" id="checklist-viz_inputs-label" for="checklist-viz_inputs">Segment Visualization</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="segment_plot"/>
                  <span>Segment Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="summary_plot"/>
                  <span>Segment Summary Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="revenue_plot"/>
                  <span>Revenue Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="scatter_plot"/>
                  <span>Scatter Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="median_recency"/>
                  <span>Median Recency Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="median_frequency"/>
                  <span>Median Frequency Plot</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-viz_inputs" value="median_monetary"/>
                  <span>Median Monetary Plot</span>
                </label>
              </div>
            </div>
            <div id="checklist-data_sets" class="form-group shiny-input-checkboxgroup shiny-input-container shiny-input-container-inline" role="group" aria-labelledby="checklist-data_sets-label">
              <label class="control-label" id="checklist-data_sets-label" for="checklist-data_sets">Data Sets</label>
              <div class="shiny-options-group">
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="raw_data"/>
                  <span>Raw Data</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="selected_data"/>
                  <span>Selected Data</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="modified_data"/>
                  <span>Modified Data</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="rfm_score"/>
                  <span>RFM Score</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="rfm_segments"/>
                  <span>RFM Segments</span>
                </label>
                <label class="checkbox-inline">
                  <input type="checkbox" name="checklist-data_sets" value="segment_summary"/>
                  <span>Segment Summary</span>
                </label>
              </div>
            </div>
          </div>
          <div class="nav-buttons">
            <div class="row">
              <div class="col-sm-6" align="left">
                <button class="btn btn-default action-button btn-back" id="checklist-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
              </div>
              <div class="col-sm-6" align="right">
                <button class="btn btn-default action-button btn-next" id="checklist-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
              </div>
            </div>
          </div>
        </div>
      </div>

