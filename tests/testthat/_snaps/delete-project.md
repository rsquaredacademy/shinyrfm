# delete_project_ui() creates the expected HTML

    Code
      delete_project_ui("remove_project")
    Output
      <div role="tabpanel" class="tab-pane" id="shiny-tab-tab_del_project">
        <div class="tab_container btn_end">
          <div>
            <div class="tab-title">
              <div class="row">
                <div class="col-sm-6" align="left">
                  <h3>Delete Project</h3>
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
                <div class="row">
                  <br/>
                  <div class="col-sm-12" align="center">
                    <div id="remove_project-list_projects" class="shiny-html-output"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6" align="left">
              <button class="btn btn-default action-button btn-back" id="remove_project-back" onclick="App.highlightTab(this, &#39;upload-tab&#39;)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
            </div>
          </div>
        </div>
      </div>

