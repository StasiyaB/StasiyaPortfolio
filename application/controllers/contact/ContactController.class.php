<?php

class ContactController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      //var_dump($_POST);
      $contact = new ContactModel();
      $contact->addContact($_POST);

      $email = new ContactModel();
      $email->createMail($_POST);


      //var_dump($contact);
    }
}
