// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// reference https://wbotelhos.com/raty, https://github.com/wbotelhos/raty
//
//= require jquery
//= require jquery.raty.js
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$( document ).on('turbolinks:load', function() {
  if($("#feeds-list").length > 0) {
    setTimeout(updateFeeds , 10000);
  }
});

function updateFeeds () {
  if ($("#feeds-list").length > 0) {
    var after = $(".feed-message:last-child").attr("data-time");
  } else {
    var after = "0";
  }
  $.getScript("/home/index.js" + "&after=" + after)
  setTimeout(updateFeeds , 10000);
}