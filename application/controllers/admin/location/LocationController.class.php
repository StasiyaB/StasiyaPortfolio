<?php

class LocationController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      //var_dump($_FILES);
      //var_dump($_POST);

      $project = new ProjectModel();
      $project->projectUpload($_POST, $_FILES);
      //var_dump($project);

    }
}
