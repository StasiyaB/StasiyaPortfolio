'use strict';

var FormValidate = function() {
  //console.log('valid');

}

FormValidate.prototype.buzz = function() {

// verifies if the mail address input is valid
  var pattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  var mail = $('#Mail');


  window.setTimeout(this.refresh.bind(this), 2000);// refreshes window after action with an interval

// put in action animation
  if (mail.val() == "" || !pattern.test(mail.val())) {

      mail.addClass('buzz');
      mail.val('Invalid mail . . .');
      mail.focus;
      return false;
  } else {

    return true;
  }
}
//refreshes window after action
FormValidate.prototype.refresh = function() {

  location.reload(true);
}
