<?php

class LoginController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      //var_dump($_POST);

      $user = new AdminModel();
      $user->addUser($_POST);
      //var_dump($user);
    }
}
