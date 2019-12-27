$(function() {

  $('.header__contents__icon').click(function() {
    if ($('.header__nav').hasClass('hide') == false) {
      $('.header__nav').addClass('hide');
    } else {
      $('.header__nav').removeClass('hide');
    }
  });

});