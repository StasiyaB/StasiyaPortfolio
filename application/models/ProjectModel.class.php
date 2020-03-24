<?php

class ProjectModel {

  private $projectId;

  public function findOneProject($projectId) {
        $dataProject = new Database ();
        $project = $dataProject->queryOne ('

                          SELECT *
                          FROM `Projects`
                          WHERE Id = ?',
                          [ $projectId ]
                      );

          return $project;
  }

  public function editProject($post, $files, $projectId) {

    $dataProject = new Database ();
    $editProject = $dataProject->executeSql('
                      UPDATE
                        Projects
                      SET
                       (ProjectName,
                       Image,
                       ProjectDescription,
                       TechnologyUsed,
                       URL)
                      VALUES
                        (?, ?, ?, ?, ?)
                      WHERE Id = ?',
                      [
                        $post['ProjectName'],
                        $files['Image']['name'],
                        $post['ProjectDescription'],
                        $post['TechnologyUsed'],
                        $post['URL'],
                        $projectId
                     ]);
                     $http = new Http();
                     $http->moveUploadedFile('Image','/images/upload');
  }

  public function projectUpload($post, $files) {

    $dataProject = new Database ();
    $dataProject->executeSql('
              INSERT INTO
                Projects
                (ProjectName,
                 Image,
                 ProjectDescription,
                 TechnologyUsed,
                 URL)
              VALUES
                 (?, ?, ?, ?, ?)',

                [
                  $post['ProjectName'],
                  $files['Image']['name'],
                  $post['ProjectDescription'],
                  $post['TechnologyUsed'],
                  $post['URL']
               ]);
               $http = new Http();
               $http->moveUploadedFile('Image','/images/upload');
  }

  public function showProject() {

    $dataProject = new Database ();
    $site = $dataProject->query ('

                      SELECT *
                      FROM Projects
                      ORDER BY Id DESC',
                      []
                  );
    return $site;
  }
}
