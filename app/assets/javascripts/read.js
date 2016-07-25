$(document).ready(function() {
  $('.links').on('click', '.mark-read', function() {
    $.ajax({
      url: '/api/v1/reads/',
      data: "id=" + $(this).data('id'),
      type: 'PATCH',
      success: function(result) {
        var $div = $("#" + this.data.split('id=').pop())
        $div.children('.status').text("Read: true")
        $($div.children('li')[0]).children('a').removeClass('unread').addClass('read')
        $div.children('button').removeClass('mark-read').addClass('mark-unread').text("mark unread")
      }
    });
  });
});
