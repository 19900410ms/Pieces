$(function() {
  $('.welcome__link__first').hover(
    function() {
      $(this).stop().animate( {
        "width" : "160px",
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
});