<?php
    $conn= new PDO('mysql:host=localhost;dbname=Hstd','root','');
    if(!$conn){
        echo'Erreur dans la connexion a la base de donné';
    }
?>