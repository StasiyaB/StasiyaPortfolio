'use strict';

var ContactSession = function() {

  console.log('move');

  this.mail = document.forms["Contact"]["Mail"].value;

  $('#deleteForm').on('click', this.clearForm.bind(this));
  $('#send').on('click', this.buzz.bind(this));
}

//refresh the form
ContactSession.prototype.clearForm = function(event) {
  event.preventDefault();

  $('#Name').val('');
  $('#Subject').val('');
  $('#Mail').val('');
  $('#Message').val('');
}

ContactSession.prototype.buzz = function(event) {
  event.preventDefault();

  if (this.mail == "") {

      $('#Mail').addClass('buzz');
      //return false;
  }

}
