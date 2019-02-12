<?php

class ContactModel {

  public function addContact($post) {

    $dataContact = new Database ();
    $dataContact->executeSql ('

              INSERT INTO
                Contacts
                (Name,
                 Mail,
                 Subject,
                 Message,
                 CreationTimestamp
                )
              VALUES
                 (?, ?, ?, ?,NOW())',

                [
                  $post['Name'],
                  $post['Mail'],
                  $post['Subject'],
                  $post['Message']
               ]);

    $http = new Http();
    //$http->redirectTo('/');
  }

  public function createMail($post) {

    $dataContact = new Database ();
    $email = $dataContact->queryOne ('

                  SELECT *
                  FROM Users
                  WHERE Mail =?',
                  [ $post['Mail']]
              );
      var_dump($email);

        $to      = $post['Mail'];
        $subject = $post['Subject'];
        $message = 'Hello, thank\'s for you message I will contact you shortly.';
        $headers = array(
        'From' => 'baryash.anastasiya@gmail.com',
        'Reply-To' => 'baryash.anastasiya@gmail.com',
        'X-Mailer' => 'PHP/' . phpversion() );

        mail($to, $subject, $message, $headers);

  }

}
