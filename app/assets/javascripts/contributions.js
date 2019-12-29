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
        "width" : "130px",
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

  //fileReader
  var file_field = document.querySelector("input[type=file]")
  
  $('#contribution_image').change(function() {
    var file = $('input[type="file"]').prop('files')[0];
    var fileReader = new FileReader();
    
    fileReader.onloadend = function() {
      var src = fileReader.result;
      var html = `<img class="image-preview" src='${src}'>`;

      $('.file-preview').after(html);
    }
    fileReader.readAsDataURL(file);
  });

  $(document).on('click', ".image-preview", function() {
    $(this).remove();
    file_field.val("");
  })

  //show
  $('.show-contribution').click(function() {
    if ($('.show-contribution__box').hasClass('none') == false) {
      $('.show-contribution__box').addClass('none');
    } else {
      $('.show-contribution__box').removeClass('none');
    }
  });

});