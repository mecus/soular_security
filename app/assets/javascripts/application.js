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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

// $('.carousel').carousel({
//   interval: 2000
// })

// var myIndex = 0;
// carousel();

// function carousel() {
//     var i;
//     var x = document.getElementsByClassName("mySlides");
//     for (i = 0; i < x.length; i++) {
//        x[i].style.display = "none";
//     }
//     myIndex++;
//     if (myIndex > x.length) {myIndex = 1}
//     x[myIndex-1].style.display = "block";
//     setTimeout(carousel, 2000); // Change image every 5 seconds
// }

var ready;
ready = function() {
	$(".main-navbar").hide();

	$("li.s-menu").click(function(){
		$(".main-navbar").show();	
		$(".quote-wrapper").hide();
		$("li.s-close").css({'display': 'block' });
		$(this).css({'display': 'none' });


	});

	$("li.s-close").click(function(){
		$(".main-navbar").hide();	
		$(".quote-wrapper").show();
		$(this).css({'display': 'none', '-webkit-transition-timing-function': 'ease-in-out', 'transition-timing-function': 'ease-in-out' });
		$("li.s-menu").css({'display': 'block', '-webkit-transition-timing-function': 'ease-in-out', 'transition-timing-function': 'ease-in-out' });
		
	});

	// $("li.dropdown-2").hover(function(){
	// 	$(".service-dropdown-2").css({'display': 'block'});
	// });

};

$(document).ready(ready);
$(document).on('page:load', ready);



