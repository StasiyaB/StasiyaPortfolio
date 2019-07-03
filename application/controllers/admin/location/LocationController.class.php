<?php

class LocationController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
      $projectsModel = new ProjectModel();
      $projects = $projectsModel->showProject();
      //var_dump($projects);
      return [
        "projects" => $projects
      ];
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
