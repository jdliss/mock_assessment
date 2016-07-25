$(document).ready(function () {
  $('.filter').on('change', function () {
    var $links = $('.link');
    filterStatus(this, $links);
  });
});

function filterStatus(object, $links) {
  var keyword = object.value;
  $links.each(function (index, link) {
    $link = $(link);
    if (keyword === "all") {
      $link.show();
    } else {
      var status = $link.children('.status').text().split("Read: ").pop();
      if (keyword === status) {
        $link.show();
      } else {
        $link.hide();
      }
    }
  });
};
