// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
  $("#songs th a, #songs .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#songs_search input").keyup(function() {
    $.get($("#songs_search").attr("action"), $("#songs_search").serialize(), null, "script");
    return false;
  });
});
