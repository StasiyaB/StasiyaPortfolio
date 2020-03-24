<?php

class ListController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

      $projectsModel = new ProjectModel();
      $projects = $projectsModel->showProject();
      //var_dump($projects);
      return [
        "projects" => $projects
      ];

      $projectId = $_GET['Id'];
      $oneProject = $projectsModel->findOneProject($projectId);

      return [
        'oneProject' => $oneProject
      ];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {


    }
}
