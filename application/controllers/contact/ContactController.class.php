<?php

class ContactController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      $error = false;
      $emailErr = '';
      //var_dump($_POST);

      if(filter_var($_POST['Mail'], FILTER_VALIDATE_EMAIL) === false) {

      $error = true;
      $emailErr = "Invalid email.";
      echo $emailErr;

      } else {

        $contact = new ContactModel();
        $contact->addContact($_POST);

        var_dump($contact);

        /*$email = new ContactModel();
        $email->createMail($_POST);*/
      }
    }
}
