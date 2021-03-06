// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery-ui
//= require popper
//= require ckeditor/init
//= require bootstrap
//= require turbolinks
//= require_tree .

//Custom JS
$(document).ready(function() {
    $(window).scroll(function() {
        if($(document).scrollTop() > 10) {
            $('#nav').removeClass('navbar-dark');
            $('#nav').addClass('shrink navbar-light');
        }
        else {
            $('#nav').removeClass('shrink navbar-light');
            $('#nav').addClass('navbar-dark');
        }
    });

    $('a[href^="#"]').on('click', function(event) {
        var target = $(this.getAttribute('href'));
        var navHeight = $('#nav').height();

        if( target.length ) {
            event.preventDefault();
            $('html, body').stop().animate({
                scrollTop: target.offset().top - navHeight
            }, 1000);
        }
    });
});

$(window).scroll(function() {
    if ($(this).scrollTop() > 50 ) {
        $('.scrolltop:hidden').stop(true, true).fadeIn();
    } else {
        $('.scrolltop').stop(true, true).fadeOut();
    }
});
$(function() {$(".scroll").click(function() {
    $("html,body").animate({scrollTop:$('#top').offset().top},"1000");return false})})