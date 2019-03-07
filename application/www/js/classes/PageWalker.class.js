'use strict';

var PageWalker = function() {

  this.removeColor();
}

PageWalker.prototype.removeColor = function () {
  //console.log('remove');

//add class with the blue color when the page is on

  if (window.location.href.indexOf('/id') != -1) {
    $('#id').addClass('host');
  } else if(window.location.href.indexOf('/project') != -1) {
    $('#project').addClass('host');
  } else if (window.location.href.indexOf('/contact') != -1) {
    $('#contact').addClass('host');
  }
}
