$(document).ready(function() {
    $(window).resize(tilesResize);
    tilesResize();
});

function tilesResize() {
    var width = $('.project-tile').css('width');
    $('.project-tile').css('height', width);
}