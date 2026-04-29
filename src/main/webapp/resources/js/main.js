/**
 *  #MAINTAB > ul > li > a href MAINTAB-1... 
 * 	> #TABS > ul > li > a href TABS-1...
 * 
 */

var ProgramTabManager = {
	createTabs: function() {
		$("#tabs").tabs();
	},
	openTab: function(id, title){
		var tabIndex = {};
		var currentMain = null;
		var currentSub = 1;

		var tabs = $("#tabs").tabs();
		var ul = tabs.find("ul");
		
		tabs.find(".ui-tabs-nav").sortable({
		    axis: "x",
		    stop: function () {
		      tabs.tabs("refresh");
		    }
		  });
		  
		// 이미 존재하면 활성화
	    if ($("#tab-" + id).length) {
	      var index = $("#tab-" + id).index() - 1;
	      tabs.tabs("option", "active", index);
	      currentMain = id;
	      restoreSubTab();
	      return;
	    }

	    // 새 탭 생성
	    var li = $(`
	      <li>
	        <a href="#tab-${id}">${title}</a>
	        <span class="tab-close">×</span>
	      </li>
	    `);

	    ul.append(li);
	    tabs.append(`<div id="tab-${id}"></div>`);
	    tabs.tabs("refresh");

	    var newIndex = ul.find("li").length - 1;
	    tabs.tabs("option", "active", newIndex);

	    currentMain = id;

	    // 닫기
	    li.find(".tab-close").on("click", function () {
	      var panelId = li.remove().attr("aria-controls");
	      $("#" + panelId).remove();
	      tabs.tabs("refresh");

	      if (ul.find("li").length === 0) {
	        $("#subTabArea").empty();
	        $("#contentArea").empty();
	        currentMain = null;
	      }
	    });
	}
}

var ComponentUtils = {
	
	
}

