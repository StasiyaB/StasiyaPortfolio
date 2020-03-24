<?php

class EditController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {

        $projects = new ProjectModel();

        $projectId = $_GET['Id'];
          //var_dump($_GET['Id']);
        $oneProject = $projects->findOneProject($projectId);
         //var_dump($oneProject);

        return [
          'oneProject' => $oneProject
        ];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {

        $projectId = $_GET['Id'];
        $projectsEdit = new ProjectModel();
        $projectsEdit->editProject($_POST, $_FILES, $projectId);

    }
}
