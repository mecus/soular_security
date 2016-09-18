
// var nagbar, yPos;
// function yScroll(){
//   nagbar = document.getElementById('nagbar');
//   yPos = window.pageYOffset; 
//   if(yPos > 100){
//     // nagbar.style.height = "60px";
//     // nagbar.style.paddingTop = "0px";
//     $(".secondary-nav").addClass("navbar-fixed-top");
//     // //nagbar.style.opacity = '0.5';
//     // $(".brand-logo img").css({"width": "180px", "height": "24px", "transition": "0.5s"});
//     // $(".inner-contact").css({"backgroundColor": "rgba(0,0,0, 0.9)", "transition": "5s"});
//   } else {
//     $(".secondary-nav").removeClass("navbar-fixed-top");
//     // nagbar.style.paddingTop = "5px";
//     // nagbar.style.background = "transparent";
//     // $(".top-page").hide();
//     // $(".brand-logo img").css({"width": "240px", "height": "38px", "transition": "0.5s"});
//     // $(".inner-contact").css({"backgroundColor": ""});
//   }
// }
// window.addEventListener("scroll", yScroll);





// jQuery to collapse the navbar on scroll
// $(window).scroll(function() {
//     if ($("#nagbar").offset().top > 50) {
//         $(".secondary-nav").addClass("navbar-fixed-top");
//     } else {
//         $(".secondary-nav").removeClass("navbar-fixed-top");
//     }
// });

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});





