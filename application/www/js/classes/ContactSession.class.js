'use strict';

var ContactSession = function() {

  console.log('move');

  $('#deleteForm').on('click', this.clearForm.bind(this));  
}

//refresh the form
ContactSession.prototype.clearForm = function(event) {
  event.preventDefault();

  $('#Name').val('');
  $('#Subject').val('');
  $('#Mail').val('');
  $('#Message').val('');
}
