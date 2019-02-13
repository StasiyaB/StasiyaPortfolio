'use strict';

var page = new PageWalker();

if ((window.location.href.indexOf('/admin/login/') != -1 ||  window.location.href.indexOf('/admin') != -1 || window.location.href.indexOf('/contact') != -1 ) && window.location.href.indexOf('/admin/location/') == -1) {
  console.log('admin oui ?');
  var formValidate = new FormValidate();
}

if (window.location.href.indexOf('/contact') != -1 ) {

  var form = new ContactSession();
}

if (window.location.href.indexOf('/admin/location/') != -1 ){
  console.log('project');
  var project = new ProjectSession();
}


/////////////////////////////////////////////////////////////////////////////////////////
// FONCTIONS                                                                           //
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
// CODE PRINCIPAL                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////
