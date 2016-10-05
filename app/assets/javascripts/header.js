$(document).on("ready page:load", $(function () {
  $('.dropdown-toggle').dropdown();
  $('#live-search-form').searchbox({
    url: '/search/',
    param: 'search',
    dom_id: '#livesearch',
    loading_css: '#livesearch_loading'
  });
}));
