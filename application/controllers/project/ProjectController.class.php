<?php

class ProjectController
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


    }
}
