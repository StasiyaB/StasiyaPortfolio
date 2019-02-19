<?php

class AdminModel {

  public function addUser($post) {

    $hashPwd = $this->hashPassword($post['Password']);

    $dataUser = new Database ();
    $dataUser->executeSql ('
              INSERT INTO
                Users
                (Name,
                 Mail,
                 Password)
              VALUES
                 (?, ?, ?)',

                [
                  $post['Name'],
                  $post['Mail'],
                  $hashPwd
               ]);

     $http = new Http();
     $http->redirectTo('/admin');

  }
  public function connectUser($post) {

    $dataUser = new Database();

    $user = $dataUser->queryOne ('

              SELECT *
              FROM Users
              WHERE Mail =?',
              [ $post['Mail']]
            );

    var_dump($user);

    if( $user != false && $this->verifyPassword($post['Password'], $user['Password']) == true ) {

      $_SESSION['Mail']      = $user['Mail'];
      $_SESSION['Name']      = $user['Name'];

      $http = new Http();
      $http->redirectTo('/admin/location/');

    }
  }

  private function hashPassword($Password)
    {

        $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

        return crypt($Password, $salt);
    }

  private function verifyPassword($password, $hashedPassword)
    {
       return crypt($password, $hashedPassword) == $hashedPassword;
    }
}
