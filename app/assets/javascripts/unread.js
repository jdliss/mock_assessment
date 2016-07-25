$(document).ready(function() {
  $('.links').on('click', '.mark-unread', function() {
    $.ajax({
      url: '/api/v1/unreads/',
      data: "id=" + $(this).data('id'),
      type: 'PATCH',
      success: function(result) {
        var $div = $("#" + this.data.split('id=').pop())
        $div.children('.status').text("Read: false")
        $($div.children('li')[0]).children('a').removeClass('read').addClass('unread')
        $div.children('button').removeClass('mark-unread').addClass('mark-read').text("mark read")
      }
    });
  });
});
