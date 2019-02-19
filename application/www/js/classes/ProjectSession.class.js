'use strict';

var ProjectSession = function() {

  console.log('pro');
  $('#deleteForm').on('click', this.clearAll.bind(this));
}

ProjectSession.prototype.clearAll = function(event) {
  event.preventDefault();

  $('#Name').val('');
  $('#Image').val('');
  $('#Techno').val('');
  $('#URL').val('');
  $('#Description').val('');
}
