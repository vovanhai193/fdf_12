$(document).on("ready page:load", $(function () {
  $('.dropdown-toggle').dropdown();
  $('input.search').searchbox({
    url: '/search/',
    param: 'search',
    dom_id: '#livesearch',
    loading_css: '#livesearch_loading'
  });
}));
