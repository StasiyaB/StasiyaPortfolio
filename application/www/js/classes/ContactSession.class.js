'use strict';

var ContactSession = function() {

  //console.log('move');
  this.removeColor();
  $('#deleteForm').on('click', this.clearForm.bind(this));

}

ContactSession.prototype.removeColor = function () {
  //console.log('remove');

//remove blue color from the li
  if (window.location.href.indexOf('/id') != -1) {
    $('#id').addClass('host');
  } else if(window.location.href.indexOf('/projects') != -1) {
    $('#project').addClass('host');
  } else if (window.location.href.indexOf('/contact') != -1) {
    $('#contact').addClass('host');
  }
}

//refresh the form
ContactSession.prototype.clearForm = function(event) {
  event.preventDefault();

  $('#Name').val('');
  $('#Subject').val('');
  $('#Mail').val('');
  $('#Message').val('');
}
