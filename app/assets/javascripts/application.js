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
//= require jquery_ujs
//= require twitter/bootstrap
//= require select2
//= require select2_locale_ru
//= require bootstrap-slider
//= require_tree .



$(function() {
    $(".rails-flash").animate({right: '0px'}).delay(1000).fadeOut(2000);
    slider();
    uploader();


    $(window).resize(function () {
        if ($(window).width() <= 870){
            $(".navbar-fixed-top").css("width", '100%');
        }
        else {
            $(".navbar-fixed-top").css("width", '80%');
        }
    })
    

});


