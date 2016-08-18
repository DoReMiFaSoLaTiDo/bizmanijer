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
//= require bootstrap
//= require jquery_ujs
//= require_tree .

$( document ).ready( function() {
    $.cloudinary.responsive();
}


var width = $(window).width();
// Because in my case the image is used as a jumbotron and so stretches the full width of a window //
if (width >= 768) {
  var image_height = 350
} else {
  var image_height = 250
}
$('#cover-image').append(
    $.cloudinary.image(image_name, { width: width, height: image_height, crop: "fill" })
)};
