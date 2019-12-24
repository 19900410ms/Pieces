$(function() {

  //top_page
  $('.welcome__link__first').hover(
    function() {
      $(this).stop().animate( {
        "width" : "180px",
        'height' : '60px',
        'line-height' : '60px',
        'margin' : '20px auto',
        "font-size" : '35px',
      }, 'fast');
    },
    function() {
      $(this).stop().animate( {
        "width" : "120px",
        'height' : '40px',
        'line-height' : '40px',
        'margin' : '0 auto',
        "font-size" : '20px',
      }, 'fast');
    }
  );

  $('.welcome__link__second').hover(
    function() {
      $(this).stop().animate( {
        "font-size" : '22px',
        "border-radius" : '20px'
      }, 'fast');
    },
    function() {
      $(this).stop().animate( {
        "font-size" : '20px',
        "border-radius" : '0'
      }, 'fast');
    }
  );

  $('.welcome__link__third').hover(
    function() {
      $(this).stop().animate( {
        "font-size" : '18x',
        "border-radius" : '10px',
        'font-weight' : "700"
      }, 'fast');
    },
    function() {
      $(this).stop().animate( {
        "font-size" : '20px',
        "border-radius" : '0',
        'font-weight' : "500"
      }, 'fast');
    }
  );

  //new, edit
  $('.picture-icon').hover(
    function() {
      $(this).stop().animate( {
        "font-size" : '100px',
      }, 'fast');
    },
    function() {
      $(this).stop().animate( {
        "font-size" : '50px',
      }, 'fast');
    }
  );

  //show
  $('.show-contribution').click(function() {
    if($('.show-contribution__box').hasClass('none') == false) {
      $('.show-contribution__box').addClass('none');
    } else {
      $('.show-contribution__box').removeClass('none');
    }
  });

});