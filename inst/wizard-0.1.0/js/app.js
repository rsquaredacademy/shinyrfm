/**
 * shinytrack - Wizard UI Application Scripts
 * Plain ES2015+ source replacing former minified webpack bundle.
 */

var App = (function () {
  "use strict";

  /**
   * Hide plot download options panel.
   *
   * @param {HTMLElement} element - Download options container element
   */
  function hideDownloadOptions(element) {
    element.style.visibility = "hidden";
    element.style.marginTop = "-72px";
  }

  /**
   * Display the second child of an element (used for submenus/tabs).
   *
   * @param {HTMLElement} element - Target container element
   */
  function showSecondChild(element) {
    element.children[1].style.display = "block";
  }

  /**
   * Adjust plot display and download options.
   *
   * @param {HTMLElement|string} element - Trigger element or selector
   * @param {string} action - Action to perform: 'customize', 'resize', 'toggle', or 'display'
   */
  function plotOptions(element, action) {
    var id = $(element).attr("id");
    var container = document.getElementById(id).closest(".tab_container");
    var plotSettings = container.querySelector(".plot-settings");
    var downloadOptions = container.querySelector(".download-options");

    switch (action) {
      case "customize":
        document.body.classList.add("sidebar-collapse");
        document.querySelector(".main-sidebar").dataset.collapsed = true;
        plotSettings.style.display = "flex";
        plotSettings.style.flexDirection = "column";
        plotSettings.style.justifyContent = "space-between";
        hideDownloadOptions(downloadOptions);
        break;

      case "resize":
        plotSettings.style.display = "none";
        hideDownloadOptions(downloadOptions);
        break;

      case "toggle":
        downloadOptions.style.visibility = "visible";
        downloadOptions.style.marginTop = "0";
        break;

      case "display":
        container.querySelector(".btn-next-delay").style.visibility = "visible";
        break;
    }
  }

  /**
   * Update plot settings layout when restoring or cloning a project.
   *
   * @param {HTMLElement|string} element - Trigger element
   */
  function updatePlotSettings(element) {
    var id = $(element).attr("id");
    document.getElementById(id);
    var checkedType = document.querySelector(
      'input[name="app-home-project_type"]:checked'
    );
    var selectedType = checkedType ? checkedType.value : "";

    if (selectedType === "restore_project" || selectedType === "clone_project") {
      document.querySelectorAll(".plot-settings").forEach(function (setting) {
        setting.style.display = "flex";
        setting.style.flexDirection = "column";
        setting.style.justifyContent = "space-between";
      });
    }
  }

  /**
   * Highlight and switch tabs in the wizard workflow.
   *
   * @param {HTMLElement|string} element - Trigger element
   * @param {string} tab - Tab identifier or target
   */
  function highlightTab(element, tab) {
    var id = $(element).attr("id");
    var paneId = document.getElementById(id).closest(".tab-pane").id;
    var navLink = document.querySelector('a[href="#' + paneId + '"]');
    var navLi = navLink.closest("li");
    var navUl = navLink.closest("ul");
    var navParent = navLink.parentElement;
    var liParent = navLi.parentElement;
    var ulParent = navUl.parentElement;

    switch (tab) {
      case "home-tab":
        showSecondChild(navLi.nextElementSibling);
        break;

      case "home-next":
        showSecondChild(navParent.nextElementSibling.nextElementSibling);
        break;

      case "exit-tab":
        liParent.style.display = "none";
        showSecondChild(navLi.nextElementSibling);
        break;

      case "upload-home":
        navUl.style.display = "none";
        ulParent.previousElementSibling.previousElementSibling.style.display =
          "block";
        break;

      case "upload-list":
      case "back-tab":
        navUl.style.display = "none";
        showSecondChild(ulParent.previousElementSibling);
        break;

      case "upload-tab":
        liParent.style.display = "none";
        showSecondChild(navLi.previousElementSibling);
        break;

      case "next-tab":
        navUl.style.display = "none";
        showSecondChild(ulParent.nextElementSibling);
        break;

      case "scatter-back":
        showSecondChild(navParent.previousElementSibling);
        break;

      case "revenue-next":
        showSecondChild(navParent.nextElementSibling);
        break;

      case "median":
        navUl.style.display = "none";
        break;
    }
  }

  return {
    plotOptions: plotOptions,
    updatePlotSettings: updatePlotSettings,
    highlightTab: highlightTab,
  };
})();

// Accordion behavior for details elements: collapse other details when one is opened
$(document).ready(function () {
  var details = document.querySelectorAll("details");
  details.forEach(function (detail) {
    detail.addEventListener("click", function () {
      details.forEach(function (other) {
        if (other !== detail) {
          other.removeAttribute("open");
        }
      });
    });
  });
});

// Switch path retrieval button mode depending on project type
$(document).ready(function () {
  var btnPath = document.querySelector(".btn-path");
  var btnRetrieve = document.querySelector(".btn-retrieve");
  if (btnPath && btnRetrieve) {
    btnPath.addEventListener("click", function () {
      var projectTypes = document.getElementsByName("home-project_type");
      var selectedType = "";
      for (var i = 0; i < projectTypes.length; i++) {
        if (projectTypes[i].checked) {
          selectedType = projectTypes[i].value;
          break;
        }
      }
      if (selectedType === "new_project") {
        btnRetrieve.innerText = "Add Project";
      }
      btnPath.style.display = "none";
      btnRetrieve.style.display = "block";
    });
  }
});

// Hide create project button once clicked
document.addEventListener("DOMContentLoaded", function () {
  var btnAddProject = document.querySelector(".btn-add-project");
  if (btnAddProject) {
    btnAddProject.addEventListener("click", function () {
      btnAddProject.style.marginBottom = 0;
      btnAddProject.style.visibility = "hidden";
    });
  }
});

// Auto-scroll to bottom of window when Shiny is idle
$(document).on("shiny:idle", function () {
  window.scrollTo(0, document.body.scrollHeight);
});

// Collapse sidebar when segment UI begins recalculating
$(document).on("shiny:recalculating", function (e) {
  if ("#app-generate_segment-ui_segment" === "#" + e.target.id) {
    document.body.classList.add("sidebar-collapse");
  }
});

// Collapse sidebar when advancing past bar chart
document.addEventListener("click", function (e) {
  if (e.target && e.target.id === "app-barchart-next") {
    document.body.classList.add("sidebar-collapse");
  }
});

// Delegated click handler to remove card/row on delete button click
document.addEventListener("DOMContentLoaded", function () {
  document.body.addEventListener("click", function (e) {
    if (e.target && e.target.classList.contains("btn-delete")) {
      e.target.parentElement.parentElement.remove();
    }
  });
});
