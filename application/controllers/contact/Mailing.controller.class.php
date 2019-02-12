<?php

class MailingController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
        $email = new ContactModel();
        $email->createMail($_POST);

        var_dump($email);

    }
}
