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
      //var_dump($email);

        $to      = $post['Mail'];
        $subject = 'Your message has been received';
        $message = '<html><body>';
        $message .= '<div style="background-color: #504746; width:95%; margin: auto;">';
        $message .= '<h1 style="text-align: center;"><img src="http://portfolio-baryash-anastasiya.com/img-mail/logo-fox-150x150.png" alt="logo"></h1>';
        $message .= '<div style="color: #FFFCF3; padding:20px;">';
        $message .= '<h2 style="color: #A2B7BF; text-align: center;">Your message has been received!</h2>';
        $message .= '<div style="padding-left: 45px; font-size: 16px;">';
        $message .= '<p>Dear  '.$post['Name'].' !</p>';
        $message .= '<p>Thank you for your message! I will contact you shortly.</p>';
        $message .= '<p>Have a nice day :)</p>';
        $message .= '</div>';
        $message .= '<footer style="color: #EDC1CC; padding-left: 20px;">';
        $message .= '<p>Kind regards, <br> Anastasiya</p>';
        $message .= '</footer></div></div></body></html>';

        $headers = array(
        'From' => 'baryash.anastasiya@gmail.com',
        'Reply-To' => 'baryash.anastasiya@gmail.com',
        'MIME-VErsion' => '1.0',
        'Content-Type' => 'text/html; charset=iso-8859-1');

        mail($to, $subject, $message, $headers);

        $to      = 'baryash.anastasiya@gmail.com';
        $subject = $post['Subject'];
        $message = 'New message from : '.$post['Mail']. ' , ' .$post['Name'].'. ';
        $message .= 'Content of the message : '.$post['Message'];
        $headers = array(
        'From' => 'baryash.anastasiya@gmail.com',
        'Reply-To' => 'baryash.anastasiya@gmail.com',
        'X-Mailer' => 'PHP/' . phpversion() );

        mail($to, $subject, $message, $headers);
  }

}
