'use strict';

var FormValidate = function() {
  console.log('valid');
}

FormValidate.prototype.buzz = function() {

  console.log('declenchement');
  if ($('#Mail').val() == "") {
    console.log('declenchement false');

      $('#Mail').addClass('buzz');
      return false;

  } else {
    console.log('declenchement true');

    return true;
  }
}
