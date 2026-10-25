# tab_title() creates expected HTML

    Code
      tab_title("Welcome")
    Output
      <div class="tab-title">
        <div class="row">
          <div class="col-sm-6" align="left">
            <h3>Welcome</h3>
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

# tab_title_btn() creates expected HTML

    Code
      tab_title_btn(NS("display_projects"), "View Projects")
    Output
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

# nav_btns() creates expected HTML

    Code
      nav_btns(NS("display_projects"))
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="display_projects-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next" id="display_projects-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

# btn_delay() creates expected HTML

    Code
      btn_delay(NS("display_projects"))
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button id="display_projects-back" type="button" class="btn btn-default action-button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next-delay" id="display_projects-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

# sidebar_highlight() creates expected HTML

    Code
      sidebar_highlight(NS("display_projects"), TRUE, "next-tab")
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="display_projects-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next btn-next-delay" id="display_projects-next" onclick="App.highlightTab(this, next-tab)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

---

    Code
      sidebar_highlight(NS("display_projects"), FALSE, "next-tab")
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="display_projects-back" onclick="App.highlightTab(this, next-tab)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next btn-next-delay" id="display_projects-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

---

    Code
      sidebar_highlight(NS("display_projects"), TRUE, "next-tab", TRUE)
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="display_projects-back" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next" id="display_projects-next" onclick="App.highlightTab(this, next-tab)" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

---

    Code
      sidebar_highlight(NS("display_projects"), FALSE, "next-tab", FALSE)
    Output
      <div class="nav-buttons">
        <div class="row">
          <div class="col-sm-6" align="left">
            <button class="btn btn-default action-button btn-back" id="display_projects-back" onclick="App.highlightTab(this, next-tab)" type="button"><span class="action-icon"><i class="fas fa-arrow-left-long" role="presentation" aria-label="arrow-left-long icon"></i></span><span class="action-label">Back</span></button>
          </div>
          <div class="col-sm-6" align="right">
            <button class="btn btn-default action-button btn-next btn-next-delay" id="display_projects-next" type="button"><span class="action-icon"><i class="fas fa-arrow-right-long" role="presentation" aria-label="arrow-right-long icon"></i></span><span class="action-label">Next</span></button>
          </div>
        </div>
      </div>

