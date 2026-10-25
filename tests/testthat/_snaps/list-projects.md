# list_projects_ui() creates the expected HTML

    Code
      list_projects_ui("display_projects")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_projects">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title-btn">
              <div class="plot-buttons">
                <div class="col-sm-6" align="left">
                  <h3>View Projects</h3>
                </div>
                <div class="col-sm-6" align="right">
                  <div class="col-sm-4 offset-md-8 col-sm-offset-8" align="right">
                    <button class="btn btn-default action-button btn_customize_plot" id="display_projects-btn_refresh" style="width:120px;" type="button"><span class="action-label">Refresh</span></button>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <hr/>
                </div>
              </div>
            </div>
            <div class="row">
              <div id="display_projects-list_projects" class="shiny-html-output"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6" align="left">
              <button id="display_projects-back" type="button" class="btn btn-default action-button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
            </div>
            <div class="col-sm-6" align="right">
              <div id="display_projects-list_projects_next" class="shiny-html-output"></div>
            </div>
          </div>
        </div>
      </div>

