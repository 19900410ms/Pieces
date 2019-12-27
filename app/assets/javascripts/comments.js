$(function(){

  function buildHTML(comment) {
    var html = `<div class="show-comment__index__box__description">
                  <p class="show-comment__index__box__description__name">
                    ${comment.user_nickname}
                    <span class="comment-date">
                      ${comment.created_at}
                    </span>
                  </p>
                  <p class="show-comment__index__box__description__text">
                    ${comment.text}
                  </p>
                </div>`
    return html;
  }

  $('.show-comment__form__with').on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    //attrで要素が持つ特定の属性の値を返す。下記にはフォーム送信先のurlが入っている。
    var url = $(this).attr('action');
    $.ajax({
      //リクエストを送信する先のurl
      url: url,
      //HTTPメソッド
      type: "POST",
      //サーバに送信する値
      data: formData,
      //サーバから返されるデータの型
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.show-comment__index__box').append(html);
      $('.comment-box').val('');
      $('#comment-btn').prop('disabled', false);
    })
    .fail(function() {
      alert('error');
    })
  })
})