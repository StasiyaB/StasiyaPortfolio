<?php

class AdminController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      $user = new AdminModel();
      $user->connectUser($_POST);
      //var_dump($user);
      //var_dump($_SESSION);  
    }
}
