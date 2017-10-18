// sticky header
jQuery(function() {
    //caches a jQuery object containing the header element
    var header = $(".fancy_header");

    jQuery(window).scroll(function() {
        var scroll = $(window).scrollTop();

        //Home page header
        if (scroll >= 2) {
            header.removeClass('simpleHeader').addClass("stickyHeader");
        } else {
            header.removeClass("stickyHeader").addClass('simpleHeader');
        }
    });
});

// animation
var wow = new WOW(
  {
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       true,       // trigger animations on mobile devices (default is true)
    live:         true        // act on asynchronously loaded content (default is true)
  }
);
wow.init();

