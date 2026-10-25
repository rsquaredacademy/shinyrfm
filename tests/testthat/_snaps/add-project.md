# add_project_ui() creates the expected HTML

    Code
      add_project_ui("add_project")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_add_project">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Add Project</h3>
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
                  <label class="control-label" id="add_project-project_title-label" for="add_project-project_title">Project Title</label>
                  <input id="add_project-project_title" type="text" class="shiny-input-text form-control" value="" data-update-on="change"/>
                </div>
                <button class="btn btn-default action-button btn-create-new-project" id="add_project-btn_create_project" onclick="App.highlightTab(this, &#39;next-tab&#39;)" type="button"><span class="action-label">Create Project</span></button>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6" align="left">
              <button id="add_project-back" type="button" class="btn btn-default action-button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
            </div>
            <div class="col-sm-6" align="right">
              <button class="btn btn-default action-button btn-next" id="add_project-next" onclick="App.highlightTab(this, &#39;next-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
            </div>
          </div>
        </div>
      </div>

