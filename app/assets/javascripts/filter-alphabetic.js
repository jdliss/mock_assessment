$(document).ready(function () {
  $('#alphabetic-filter').on('click', function () {
    var $links = $('.link');
    var newList = $links.sort(compare);
    $links.each(function(index, link) { $(link).remove() ;})
    newList.each(function(index, link) { $('.links').append(link); })
  });
});

function compare(a,b) {
  var a = $(a).children('li').first().children('a').text().split("Read: ").pop();
  var b = $(b).children('li').first().children('a').text().split("Read: ").pop();
  if (a < b)
    return -1;
  if (a > b)
    return 1;
  return 0;
}
