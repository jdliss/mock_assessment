$(document).ready(function () {
  var $links = $('.link');

  $('#link_search').on('keyup', function () {
    searchLinks(this, $links);
  });
});

function searchLinks(object, $links) {
  var keyword = object.value.toLowerCase();
  $links.each(function (index, link) {
    $link = $(link);
    var titleText = $($link.children('li')[0]).children('a').text()
    if (titleText.includes(keyword)) {
      $link.show();
    } else {
      $link.hide();
    }
  });
};


