# segment_input() creates expected HTML

    Code
      segment_input(NS("segment"))
    Output
      <hr/>
      <div class="row">
        <div class="col-sm-2" align="center">
          <h5>Segment</h5>
        </div>
        <div class="col-sm-3" align="center">
          <h5>Recency Score</h5>
        </div>
        <div class="col-sm-3" align="center">
          <h5>Frequency Score</h5>
        </div>
        <div class="col-sm-3" align="center">
          <h5>Monetary Score</h5>
        </div>
      </div>
      <hr/>
      <div class="segment_line">
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 1-label" for="segment-segment_name_ 1"></label>
                <input id="segment-segment_name_ 1" type="text" class="shiny-input-text form-control" value="Champions" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 1-label" for="segment-recency_interval_ 1"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 1-label" for="segment-frequency_interval_ 1"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 1-label" for="segment-monetary_interval_ 1"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_1" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 2-label" for="segment-segment_name_ 2"></label>
                <input id="segment-segment_name_ 2" type="text" class="shiny-input-text form-control" value="Potential Loyalist" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 2-label" for="segment-recency_interval_ 2"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 2" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 2-label" for="segment-frequency_interval_ 2"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 2" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 2-label" for="segment-monetary_interval_ 2"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 2" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_2" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 3-label" for="segment-segment_name_ 3"></label>
                <input id="segment-segment_name_ 3" type="text" class="shiny-input-text form-control" value="Loyal Customers" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 3-label" for="segment-recency_interval_ 3"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 3" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 3-label" for="segment-frequency_interval_ 3"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 3" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 3-label" for="segment-monetary_interval_ 3"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 3" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_3" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 4-label" for="segment-segment_name_ 4"></label>
                <input id="segment-segment_name_ 4" type="text" class="shiny-input-text form-control" value="Promising" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 4-label" for="segment-recency_interval_ 4"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 4" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 4-label" for="segment-frequency_interval_ 4"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 4" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="3" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 4-label" for="segment-monetary_interval_ 4"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 4" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_4" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 5-label" for="segment-segment_name_ 5"></label>
                <input id="segment-segment_name_ 5" type="text" class="shiny-input-text form-control" value="New Customers" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 5-label" for="segment-recency_interval_ 5"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 5" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="4" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 5-label" for="segment-frequency_interval_ 5"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 5" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="3" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 5-label" for="segment-monetary_interval_ 5"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 5" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_5" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 6-label" for="segment-segment_name_ 6"></label>
                <input id="segment-segment_name_ 6" type="text" class="shiny-input-text form-control" value="Can&#39;t Lose Them" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 6-label" for="segment-recency_interval_ 6"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 6" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="2" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 6-label" for="segment-frequency_interval_ 6"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 6" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 6-label" for="segment-monetary_interval_ 6"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 6" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="4" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_6" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 7-label" for="segment-segment_name_ 7"></label>
                <input id="segment-segment_name_ 7" type="text" class="shiny-input-text form-control" value="At Risk" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 7-label" for="segment-recency_interval_ 7"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 7" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="2" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 7-label" for="segment-frequency_interval_ 7"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 7" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 7-label" for="segment-monetary_interval_ 7"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 7" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="4" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_7" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 8-label" for="segment-segment_name_ 8"></label>
                <input id="segment-segment_name_ 8" type="text" class="shiny-input-text form-control" value="Need Attention" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 8-label" for="segment-recency_interval_ 8"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 8" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="3" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 8-label" for="segment-frequency_interval_ 8"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 8" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 8-label" for="segment-monetary_interval_ 8"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 8" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="3" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_8" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 9-label" for="segment-segment_name_ 9"></label>
                <input id="segment-segment_name_ 9" type="text" class="shiny-input-text form-control" value="About To Sleep" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 9-label" for="segment-recency_interval_ 9"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 9" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="2" data-to="3" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 9-label" for="segment-frequency_interval_ 9"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 9" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="3" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 9-label" for="segment-monetary_interval_ 9"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 9" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="4" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_9" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="segment_delete">
            <div class="col-sm-2" align="center">
              <div class="form-group shiny-input-container" style="width:150px;">
                <label class="control-label" id="segment-segment_name_ 10-label" for="segment-segment_name_ 10"></label>
                <input id="segment-segment_name_ 10" type="text" class="shiny-input-text form-control" value="Lost" data-update-on="change"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-recency_interval_ 10-label" for="segment-recency_interval_ 10"></label>
                <input class="js-range-slider" id="segment-recency_interval_ 10" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="1" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-frequency_interval_ 10-label" for="segment-frequency_interval_ 10"></label>
                <input class="js-range-slider" id="segment-frequency_interval_ 10" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="form-group shiny-input-container" style="width:80%;">
                <label class="control-label" id="segment-monetary_interval_ 10-label" for="segment-monetary_interval_ 10"></label>
                <input class="js-range-slider" id="segment-monetary_interval_ 10" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="1" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
              </div>
            </div>
            <div class="col-sm-1" align="center">
              <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_10" type="button"><span class="action-label">Remove</span></button>
            </div>
          </div>
        </div>
      </div>
      <hr/>
      <div class="row">
        <div class="col-sm-8" align="left">
          <br/>
          <button id="segment-restore_segment" type="button" class="btn btn-default action-button"><span class="action-label">Restore Segments</span></button>
          <br/>
          <br/>
        </div>
        <div class="col-sm-2" align="right">
          <br/>
          <button id="segment-add_new_segment" type="button" class="btn btn-default action-button"><span class="action-label">Add Segment</span></button>
          <br/>
          <br/>
        </div>
        <div class="col-sm-2" align="right">
          <br/>
          <button id="segment-btn_create_segments" type="button" class="btn btn-default action-button" onclick="App.plotOptions(this, &#39;display&#39;)"><span class="action-label">Generate Segments</span></button>
          <br/>
          <br/>
        </div>
      </div>

# rfm_segment_headings() creates expected HTML

    Code
      rfm_segment_headings()
    Output
      <div class="col-sm-3" align="center">
        <h5>Recency Score</h5>
      </div>
      <div class="col-sm-3" align="center">
        <h5>Frequency Score</h5>
      </div>
      <div class="col-sm-3" align="center">
        <h5>Monetary Score</h5>
      </div>

# add_new_segment() creates expected HTML

    Code
      add_new_segment(NS("segment"))
    Output
      <div class="custom_segment">
        <hr/>
        <div class="row">
          <div class="col-sm-2" align="center">
            <h5>Segment</h5>
          </div>
          <div class="col-sm-3" align="center">
            <h5>Recency Score</h5>
          </div>
          <div class="col-sm-3" align="center">
            <h5>Frequency Score</h5>
          </div>
          <div class="col-sm-3" align="center">
            <h5>Monetary Score</h5>
          </div>
          <div class="col-sm-1"></div>
        </div>
        <hr/>
        <div class="segment_line">
          <div class="row">
            <div class="segment_delete">
              <div class="col-sm-2" align="center">
                <div class="form-group shiny-input-container" style="width:150px;">
                  <label class="control-label" id="segment-segment_name_ 1-label" for="segment-segment_name_ 1"></label>
                  <input id="segment-segment_name_ 1" type="text" class="shiny-input-text form-control" value="Champions" data-update-on="change"/>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="form-group shiny-input-container" style="width:80%;">
                  <label class="control-label" id="segment-recency_interval_ 1-label" for="segment-recency_interval_ 1"></label>
                  <input class="js-range-slider" id="segment-recency_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="form-group shiny-input-container" style="width:80%;">
                  <label class="control-label" id="segment-frequency_interval_ 1-label" for="segment-frequency_interval_ 1"></label>
                  <input class="js-range-slider" id="segment-frequency_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="form-group shiny-input-container" style="width:80%;">
                  <label class="control-label" id="segment-monetary_interval_ 1-label" for="segment-monetary_interval_ 1"></label>
                  <input class="js-range-slider" id="segment-monetary_interval_ 1" data-skin="shiny" data-type="double" data-min="1" data-max="5" data-from="5" data-to="5" data-step="1" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-prettify-enabled="true" data-keyboard="true" data-drag-interval="true" data-data-type="number"/>
                </div>
              </div>
              <div class="col-sm-1" align="center">
                <button class="btn btn-default action-button btn-delete" id="segment-btn_remove_segment_1" type="button"><span class="action-label">Remove</span></button>
              </div>
            </div>
          </div>
        </div>
        <hr/>
        <div class="row">
          <div class="col-sm-8" align="left">
            <br/>
            <button id="segment-restore_segment" type="button" class="btn btn-default action-button"><span class="action-label">Restore Segments</span></button>
            <br/>
            <br/>
          </div>
          <div class="col-sm-2" align="right">
            <br/>
            <button id="segment-add_new_segment" type="button" class="btn btn-default action-button"><span class="action-label">Add Segment</span></button>
            <br/>
            <br/>
          </div>
          <div class="col-sm-2" align="right">
            <br/>
            <button id="segment-btn_create_segments" type="button" class="btn btn-default action-button" onclick="App.plotOptions(this, &#39;display&#39;)"><span class="action-label">Generate Segments</span></button>
            <br/>
            <br/>
          </div>
        </div>
      </div>

# segment_buttons() creates expected HTML

    Code
      segment_buttons(NS("segment"))
    Output
      <div class="row">
        <div class="col-sm-8" align="left">
          <br/>
          <button id="segment-restore_segment" type="button" class="btn btn-default action-button"><span class="action-label">Restore Segments</span></button>
          <br/>
          <br/>
        </div>
        <div class="col-sm-2" align="right">
          <br/>
          <button id="segment-add_new_segment" type="button" class="btn btn-default action-button"><span class="action-label">Add Segment</span></button>
          <br/>
          <br/>
        </div>
        <div class="col-sm-2" align="right">
          <br/>
          <button id="segment-btn_create_segments" type="button" class="btn btn-default action-button" onclick="App.plotOptions(this, &#39;display&#39;)"><span class="action-label">Generate Segments</span></button>
          <br/>
          <br/>
        </div>
      </div>

# sub_menu() creates expected HTML

    Code
      sub_menu()
    Output
      <li class="treeview">
        <a href="#shiny-tab-tab_median_plot">
          <span class="sub-menu">Median Plots</span>
          <i class="fas fa-angle-left pull-right" role="presentation" aria-label="angle-left icon"></i>
        </a>
        <ul class="treeview-menu" style="display: none;" data-expanded="MedianPlots">
          <li>
            <a href="#shiny-tab-tab_median_recency" data-toggle="tab" data-value="tab_median_recency">
              <i class="fas fa-angles-right" role="presentation" aria-label="angles-right icon"></i>
              Median Recency
            </a>
          </li>
          <li>
            <a href="#shiny-tab-tab_median_frequency" data-toggle="tab" data-value="tab_median_frequency">
              <i class="fas fa-angles-right" role="presentation" aria-label="angles-right icon"></i>
              Median Frequency
            </a>
          </li>
          <li>
            <a href="#shiny-tab-tab_median_monetary" data-toggle="tab" data-value="tab_median_monetary">
              <i class="fas fa-angles-right" role="presentation" aria-label="angles-right icon"></i>
              Median Monetary
            </a>
          </li>
        </ul>
      </li>

