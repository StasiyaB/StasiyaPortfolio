<?php

class ContactModel {

  public function addContact($post) {

    $dataContact = new Database ();
    $dataContact->executeSql ('
              INSERT INTO
                Contacts
                (LastName,
                 FirstName,
                 Mail,
                 Message,
                 CreationTimestamp
                )
              VALUES
                 (?, ?, ?, ?,NOW())',

                [
                  $post['LastName'],
                  $post['FirstName'],
                  $post['Mail'],
                  $post['Message']
               ]);

    $http = new Http();
    //$http->redirectTo('/');
  }

/*  public function addUser($post) {
    //$hashPwd = $this->hashPassword($post['password']);

  }

  public function connectUser($post) {

		$dataClient = new Database();

		$client = $dataClient->queryOne ('

              SELECT *
              FROM Users
              WHERE Email =?',
              [ $post['email']]
            );

		var_dump($client);

		if( $client != false && $this->verifyPassword($post['password'], $client['Password']) == true ) {

			$_SESSION['id']        = $client['Id'];
			$_SESSION['email']     = $client['Email'];
			$_SESSION['firstName'] = $client['FirstName'];
			$_SESSION['lastName']  = $client['LastName'];
      $_SESSION['address']   = $client['Address'];
      $_SESSION['city']      = $client['City'];
      $_SESSION['zipCode']   = $client['ZipCode'];

      $http = new Http();
      $http->redirectTo('/');

		}
	}

  private function hashPassword($password)
    {

        $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

        return crypt($password, $salt);
    }

  private function verifyPassword($password, $hashedPassword)
	  {
	     return crypt($password, $hashedPassword) == $hashedPassword;
	  }*/
}
