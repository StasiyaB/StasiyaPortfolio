<?php

class ProjectModel {

  public function projectUpload($post) {

    $dataProject = new Database ();
    $dataProject->executeSql('
              INSERT INTO
                Users
                (ProjectName,
                 Image,
                 ProjectDescription,
                 TechnologyUsed,
                 URL)
              VALUES
                 (?, ?, ?, ?, ?)',

                [
                  $post['ProjectName'],
                  $post['Image'],
                  $post['ProjectDescription'],
                  $post['TechnologyUsed'],
                  $post['URL']
               ]);
  }
}
