(function($){
  "use strict"; // Start of use strict

  /* ---------------------------------------------
    Scripts initialization
  --------------------------------------------- */
  $(window).load(function(){
    $(window).trigger("scroll");
    $(window).trigger("resize");
  });

  $(document).ready(function(){
    $(window).trigger("resize");
  });

  $(window).resize(function(){
    init_classic_menu_resize();
  });

  /* --------------------------------------------
   Platform detect
   --------------------------------------------- */
  var mobileTest;
  if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
    mobileTest = true;
    $("html").addClass("mobile");
  }
  else {
    mobileTest = false;
    $("html").addClass("no-mobile");
  }

  var mozillaTest;
  if (/mozilla/.test(navigator.userAgent)) {
    mozillaTest = true;
  }
  else {
    mozillaTest = false;
  }
  var safariTest;
  if (/safari/.test(navigator.userAgent)) {
    safariTest = true;
  }
  else {
    safariTest = false;
  }

  // Detect touch devices
  if (!("ontouchstart" in document.documentElement)) {
    document.documentElement.className += " no-touch";
  }

  /* ---------------------------------------------
    Menu classic
  --------------------------------------------- */
  function init_classic_menu_resize(){
    if ($(window).width() <= 768) {
      $(".wrapper").addClass("mobile-on");
    }
    else
      if ($(window).width() > 768) {
        $(".wrapper").removeClass("mobile-on");
      }
  }
})(jQuery);
