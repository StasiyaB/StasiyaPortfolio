'use strict';

var FormValidate = function() {
  //console.log('valid');
}

FormValidate.prototype.buzz = function() {

// verify if the input mail address is valid
  var pattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  var mail = $('#Mail');

  //console.log('declenchement');

  if (mail.val() == "" || !pattern.test(mail.val())) {

  //console.log('declenchement false');
      mail.addClass('buzz');
      mail.val('Invalid mail...');
      mail.focus;

      return false;
  } else {
  //console.log('declenchement true');
    return true;
  }
}
