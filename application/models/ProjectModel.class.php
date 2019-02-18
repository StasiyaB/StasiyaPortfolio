<?php

class ProjectModel {

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
