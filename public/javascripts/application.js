// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var warning = $(".message");

$(document).ready(function(){$(".fancyselect").multiselect({ multiple: false,  selectedList: 10,  header: "Select an option",
   noneSelectedText: "Select an Option"});});

$(document).ready(function(){$(".txtInput").autoGrow();});
$(document).ready(function() {
  $("a").click(function() {
    link_host = this.href.split("/")[2];
    document_host = document.location.href.split("/")[2];

    if (link_host != document_host) {
      window.open(this.href);
      return false;
    }
  });
});
